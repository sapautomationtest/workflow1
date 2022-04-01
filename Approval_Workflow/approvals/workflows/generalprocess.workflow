{
	"contents": {
		"dc3b8c59-7791-49e5-84f9-f6dcd6a66218": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "generalprocess",
			"subject": "generalprocess",
			"name": "generalprocess",
			"documentation": "generalprocess",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"f455a956-bfe7-480c-bb49-875d1132fc0b": {
					"name": "BU Approval"
				},
				"59e00baa-49f7-4e17-a8e0-cf6762ec8ddd": {
					"name": "PrepareContext"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5bfcf16c-3b80-4318-896b-881de6c9e7c3": {
					"name": "SequenceFlow2"
				},
				"bfd47063-41ba-40d4-a7f9-7a3f269bdc01": {
					"name": "SequenceFlow4"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"b6cba057-0a47-4647-8889-c81cb642cd7b": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "59e00baa-49f7-4e17-a8e0-cf6762ec8ddd"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"3be1766f-1be8-4799-bb5c-4bef8242f376": {},
				"decbd01e-bb29-4f6b-8118-da9ad4a395f1": {},
				"e8141dac-f7e4-41e9-9421-a5677ef1950a": {},
				"52aa57a6-01be-49b3-b73e-32db673b073c": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -3,
			"y": 102,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 598,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "13,117.9375 141.3704996871481,117.9375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e8141dac-f7e4-41e9-9421-a5677ef1950a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 4,
			"startevent": 1,
			"endevent": 1,
			"scripttask": 2,
			"referencedsubflow": 1
		},
		"f455a956-bfe7-480c-bb49-875d1132fc0b": {
			"classDefinition": "com.sap.bpm.wfs.ReferencedSubflow",
			"definitionId": "approvals",
			"multiInstanceLoopCharacteristics": {
				"type": "parallel",
				"collection": "${context.userData.BUList}"
			},
			"inParameters": [{
				"sourceExpression": "${context.userData.commentForApprover}",
				"targetVariable": "${context.userData.commentForApprover}"
			}, {
				"sourceExpression": "${context.projectData}",
				"targetVariable": "${context.projectData}"
			}, {
				"sourceExpression": "${context.userData.firstName}",
				"targetVariable": "${context.userData.firstName}"
			}, {
				"sourceExpression": "${context.userData.lastName}",
				"targetVariable": "${context.userData.lastName}"
			}, {
				"sourceExpression": "${context.userData.BUList[loop.counter].BU}",
				"targetVariable": "${context.userData.BU}"
			}],
			"outParameters": [{
				"sourceExpression": "${context.approval}",
				"targetVariable": "${context.userData.BUList[loop.counter]}"
			}],
			"id": "referencedsubflow1",
			"name": "BU Approval",
			"principalPropagationRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"3be1766f-1be8-4799-bb5c-4bef8242f376": {
			"classDefinition": "com.sap.bpm.wfs.ui.ReferencedSubflowSymbol",
			"x": 254.74147286593848,
			"y": 87.75,
			"width": 100,
			"height": 60,
			"object": "f455a956-bfe7-480c-bb49-875d1132fc0b"
		},
		"5bfcf16c-3b80-4318-896b-881de6c9e7c3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "f455a956-bfe7-480c-bb49-875d1132fc0b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"decbd01e-bb29-4f6b-8118-da9ad4a395f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "304.7414728659385,117.625 615.5,117.625",
			"sourceSymbol": "3be1766f-1be8-4799-bb5c-4bef8242f376",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5bfcf16c-3b80-4318-896b-881de6c9e7c3"
		},
		"b6cba057-0a47-4647-8889-c81cb642cd7b": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/InputSampleMain.json",
			"id": "default-start-context"
		},
		"59e00baa-49f7-4e17-a8e0-cf6762ec8ddd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/generalprocess/prepareResponseContext.js",
			"id": "scripttask2",
			"name": "PrepareContext"
		},
		"e8141dac-f7e4-41e9-9421-a5677ef1950a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 91.37049968714811,
			"y": 87.875,
			"width": 100,
			"height": 60,
			"object": "59e00baa-49f7-4e17-a8e0-cf6762ec8ddd"
		},
		"bfd47063-41ba-40d4-a7f9-7a3f269bdc01": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "59e00baa-49f7-4e17-a8e0-cf6762ec8ddd",
			"targetRef": "f455a956-bfe7-480c-bb49-875d1132fc0b"
		},
		"52aa57a6-01be-49b3-b73e-32db673b073c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "141.3704996871481,117.8125 304.7414728659385,117.8125",
			"sourceSymbol": "e8141dac-f7e4-41e9-9421-a5677ef1950a",
			"targetSymbol": "3be1766f-1be8-4799-bb5c-4bef8242f376",
			"object": "bfd47063-41ba-40d4-a7f9-7a3f269bdc01"
		}
	}
}