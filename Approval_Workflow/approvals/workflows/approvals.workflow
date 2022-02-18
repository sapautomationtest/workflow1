{
	"contents": {
		"2ca96dc9-2beb-45dc-8686-92b860c2039d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvals",
			"subject": "approvals",
			"name": "approvals",
			"documentation": "Approvals Workflow",
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
				"e36867d1-fdbe-4bdc-9237-89722201e13a": {
					"name": "Approve Request"
				},
				"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
					"name": "Prepare Rule"
				},
				"03994c8c-ba1a-45ab-9ff2-841460af0999": {
					"name": "Get Approver"
				},
				"daa2f18c-87c8-47a3-9042-c70d11548c68": {
					"name": "Prepare Context"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"e7aa9a2f-2a21-46d0-9e97-919fa39268f1": {
					"name": "SequenceFlow2"
				},
				"6bb89308-86bb-461c-a0b0-d06c7dd57235": {
					"name": "SequenceFlow3"
				},
				"cec41236-f421-485e-8cca-1896ce213090": {
					"name": "SequenceFlow4"
				},
				"1b02e3d1-9fde-424f-b1f7-317ce561668b": {
					"name": "SequenceFlow5"
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
				"506119fc-e81f-4ceb-8d22-5bf86082273f": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"e36867d1-fdbe-4bdc-9237-89722201e13a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval request from ${context.userData.firstName} ${context.userData.lastName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approver}",
			"formReference": "/forms/approvals/approvalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve Request"
		},
		"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/prepareRule.js",
			"id": "scripttask1",
			"name": "Prepare Rule",
			"documentation": "Get users BU and prepare call to the Business Rule to determine approver"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "00de1d3b-e558-4350-a64c-42b65d60fcdb"
		},
		"e7aa9a2f-2a21-46d0-9e97-919fa39268f1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e36867d1-fdbe-4bdc-9237-89722201e13a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb89308-86bb-461c-a0b0-d06c7dd57235": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "00de1d3b-e558-4350-a64c-42b65d60fcdb",
			"targetRef": "03994c8c-ba1a-45ab-9ff2-841460af0999"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4e80e03c-ffdf-4bed-a624-f73c96dc1516": {},
				"cbcfd1f0-e160-4902-b395-1b39e2ab345f": {},
				"32f954de-adee-45bc-b75d-954e5df27bbc": {},
				"d018590a-f0a6-4aa2-828e-55bf5d9398f0": {},
				"db302282-9711-4db9-ba30-b4f294184d26": {},
				"4239f615-d07a-4bb6-9415-cb53a60e2720": {},
				"daaedb33-ea49-4c9f-9117-452e220e6d86": {},
				"ebd0a78e-8495-4320-b0bc-71c942fd1468": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 792,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 220,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4e80e03c-ffdf-4bed-a624-f73c96dc1516": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 659,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"cbcfd1f0-e160-4902-b395-1b39e2ab345f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "709,116.75 809.5,116.75",
			"sourceSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e7aa9a2f-2a21-46d0-9e97-919fa39268f1"
		},
		"32f954de-adee-45bc-b75d-954e5df27bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 170,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "00de1d3b-e558-4350-a64c-42b65d60fcdb"
		},
		"d018590a-f0a6-4aa2-828e-55bf5d9398f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "220,116 372,116",
			"sourceSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"targetSymbol": "db302282-9711-4db9-ba30-b4f294184d26",
			"object": "6bb89308-86bb-461c-a0b0-d06c7dd57235"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2
		},
		"03994c8c-ba1a-45ab-9ff2-841460af0999": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.rulesResponse}",
			"id": "servicetask1",
			"name": "Get Approver",
			"documentation": "Call business rules service to get approver"
		},
		"db302282-9711-4db9-ba30-b4f294184d26": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 322,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "03994c8c-ba1a-45ab-9ff2-841460af0999"
		},
		"cec41236-f421-485e-8cca-1896ce213090": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "03994c8c-ba1a-45ab-9ff2-841460af0999",
			"targetRef": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"4239f615-d07a-4bb6-9415-cb53a60e2720": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "372,116 546,116",
			"sourceSymbol": "db302282-9711-4db9-ba30-b4f294184d26",
			"targetSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"object": "cec41236-f421-485e-8cca-1896ce213090"
		},
		"506119fc-e81f-4ceb-8d22-5bf86082273f": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/InputSample.json",
			"id": "default-start-context"
		},
		"daa2f18c-87c8-47a3-9042-c70d11548c68": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/prepareContext.js",
			"id": "scripttask2",
			"name": "Prepare Context"
		},
		"daaedb33-ea49-4c9f-9117-452e220e6d86": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 496,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"1b02e3d1-9fde-424f-b1f7-317ce561668b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "daa2f18c-87c8-47a3-9042-c70d11548c68",
			"targetRef": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"ebd0a78e-8495-4320-b0bc-71c942fd1468": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "546,116 709,116",
			"sourceSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"targetSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"object": "1b02e3d1-9fde-424f-b1f7-317ce561668b"
		}
	}
}