{
	"contents": {
		"2ca96dc9-2beb-45dc-8686-92b860c2039d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvals",
			"subject": "approvals",
			"businessKey": "${context.projectData.projectID}-${context.userData.BU}",
			"customAttributes": [{
				"id": "project",
				"label": "Project",
				"type": "string",
				"value": "${context.projectData.projectID}"
			}, {
				"id": "user",
				"label": "User",
				"type": "string",
				"value": "${context.userData.fullName}"
			}, {
				"id": "bu",
				"label": "Business Unit",
				"type": "string",
				"value": "${context.userData.BU}"
			}],
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
					"name": "Review and Approve"
				},
				"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
					"name": "Prepare Rule"
				},
				"03994c8c-ba1a-45ab-9ff2-841460af0999": {
					"name": "Get Approver"
				},
				"daa2f18c-87c8-47a3-9042-c70d11548c68": {
					"name": "Prepare Context"
				},
				"d66961fe-59bc-4822-85ae-60067ebae774": {
					"name": "Is Approved?"
				},
				"b35f9987-d688-4bf6-8d4e-7140f7fe31ea": {
					"name": "Submit"
				},
				"98bcf0f7-abee-47c7-80f3-c10100529605": {
					"name": "Check Decision"
				},
				"23ae54d4-5885-4ca7-9520-6c9fd9488216": {
					"name": "Check Submit"
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
				"e326b5aa-36cf-4b63-a9f1-7e47b1405884": {
					"name": "Approved"
				},
				"a09a9a2a-2032-450d-bd41-752edccdfed2": {
					"name": "Rejected"
				},
				"1a6b4197-1da4-4106-a0f2-775312dead85": {
					"name": "SequenceFlow8"
				},
				"1ebababa-8c7e-4787-bce1-6d25513ac7db": {
					"name": "SequenceFlow9"
				},
				"e9bb6a41-98c9-4bcd-ae09-b7106e4157ff": {
					"name": "SequenceFlow10"
				},
				"149e61bf-0f46-4abd-8f99-d6876d117a9a": {
					"name": "SequenceFlow11"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"e36867d1-fdbe-4bdc-9237-89722201e13a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Review and approve request: ${context.userData.BU}",
			"description": "Your approval is needed for the following request. Please, choose and submit your decision.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/approvals/approveRequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approveRequestForm"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask1",
			"name": "Review and Approve"
		},
		"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/prepareRule.js",
			"id": "scripttask1",
			"name": "Prepare Rule",
			"documentation": "Get users BU and prepare call to the Business Rule to determine approver"
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
		"daa2f18c-87c8-47a3-9042-c70d11548c68": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/prepareContext.js",
			"id": "scripttask2",
			"name": "Prepare Context"
		},
		"d66961fe-59bc-4822-85ae-60067ebae774": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Is Approved?",
			"default": "e326b5aa-36cf-4b63-a9f1-7e47b1405884"
		},
		"b35f9987-d688-4bf6-8d4e-7140f7fe31ea": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Submit info, BU ${context.userData.BU}",
			"description": "New request. Provided information and submit for approval.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approver}",
			"formReference": "/forms/approvals/submitRequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "submitRequestForm"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Submit"
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
			"targetRef": "98bcf0f7-abee-47c7-80f3-c10100529605"
		},
		"6bb89308-86bb-461c-a0b0-d06c7dd57235": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "00de1d3b-e558-4350-a64c-42b65d60fcdb",
			"targetRef": "03994c8c-ba1a-45ab-9ff2-841460af0999"
		},
		"cec41236-f421-485e-8cca-1896ce213090": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "03994c8c-ba1a-45ab-9ff2-841460af0999",
			"targetRef": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"e326b5aa-36cf-4b63-a9f1-7e47b1405884": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "Approved",
			"sourceRef": "d66961fe-59bc-4822-85ae-60067ebae774",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"a09a9a2a-2032-450d-bd41-752edccdfed2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approval.decision==\"R\"}",
			"id": "sequenceflow7",
			"name": "Rejected",
			"documentation": "Request has been rejected",
			"sourceRef": "d66961fe-59bc-4822-85ae-60067ebae774",
			"targetRef": "b35f9987-d688-4bf6-8d4e-7140f7fe31ea"
		},
		"1a6b4197-1da4-4106-a0f2-775312dead85": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "b35f9987-d688-4bf6-8d4e-7140f7fe31ea",
			"targetRef": "23ae54d4-5885-4ca7-9520-6c9fd9488216"
		},
		"1ebababa-8c7e-4787-bce1-6d25513ac7db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "daa2f18c-87c8-47a3-9042-c70d11548c68",
			"targetRef": "b35f9987-d688-4bf6-8d4e-7140f7fe31ea"
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
				"ebf911c0-fd82-48a9-8c68-9d7811a6c9fd": {},
				"c3298bff-1a54-4965-afad-86d579955fc5": {},
				"80092972-c7e1-4f36-8199-80f1a29f0d36": {},
				"6a95a66e-c00f-4963-bfa0-56cdce68e9ad": {},
				"5b11ea21-1962-4e67-b882-9142072035ee": {},
				"46545c21-bc20-4367-b0cb-c62dd5869f99": {},
				"a1a604c9-615b-473a-9684-e318650a8427": {},
				"5d6e0cd7-69b1-4789-9500-fc00ff3a4d16": {},
				"5858b930-1692-4cfc-983b-a62de4d257cb": {},
				"164b2d43-4486-414a-93c9-5c0f55df74aa": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 61,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1041,
			"y": 263,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "77,116 169,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4e80e03c-ffdf-4bed-a624-f73c96dc1516": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 574,
			"y": 247,
			"width": 100,
			"height": 60,
			"object": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"cbcfd1f0-e160-4902-b395-1b39e2ab345f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "624,276.9375 795.625,276.9375",
			"sourceSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"targetSymbol": "a1a604c9-615b-473a-9684-e318650a8427",
			"object": "e7aa9a2f-2a21-46d0-9e97-919fa39268f1"
		},
		"32f954de-adee-45bc-b75d-954e5df27bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 119,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "00de1d3b-e558-4350-a64c-42b65d60fcdb"
		},
		"d018590a-f0a6-4aa2-828e-55bf5d9398f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "169,116 317,116",
			"sourceSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"targetSymbol": "db302282-9711-4db9-ba30-b4f294184d26",
			"object": "6bb89308-86bb-461c-a0b0-d06c7dd57235"
		},
		"db302282-9711-4db9-ba30-b4f294184d26": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 267,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "03994c8c-ba1a-45ab-9ff2-841460af0999"
		},
		"4239f615-d07a-4bb6-9415-cb53a60e2720": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "317,116 449,116",
			"sourceSymbol": "db302282-9711-4db9-ba30-b4f294184d26",
			"targetSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"object": "cec41236-f421-485e-8cca-1896ce213090"
		},
		"daaedb33-ea49-4c9f-9117-452e220e6d86": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 399,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"ebf911c0-fd82-48a9-8c68-9d7811a6c9fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 916.75,
			"y": 255.75,
			"object": "d66961fe-59bc-4822-85ae-60067ebae774"
		},
		"c3298bff-1a54-4965-afad-86d579955fc5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "937.75,278.625 1058.5,278.625",
			"sourceSymbol": "ebf911c0-fd82-48a9-8c68-9d7811a6c9fd",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e326b5aa-36cf-4b63-a9f1-7e47b1405884"
		},
		"80092972-c7e1-4f36-8199-80f1a29f0d36": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 574,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "b35f9987-d688-4bf6-8d4e-7140f7fe31ea"
		},
		"6a95a66e-c00f-4963-bfa0-56cdce68e9ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "936,275.875 936,123 624,123",
			"sourceSymbol": "ebf911c0-fd82-48a9-8c68-9d7811a6c9fd",
			"targetSymbol": "80092972-c7e1-4f36-8199-80f1a29f0d36",
			"object": "a09a9a2a-2032-450d-bd41-752edccdfed2"
		},
		"5b11ea21-1962-4e67-b882-9142072035ee": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "624,116 624,196.5",
			"sourceSymbol": "80092972-c7e1-4f36-8199-80f1a29f0d36",
			"targetSymbol": "5858b930-1692-4cfc-983b-a62de4d257cb",
			"object": "1a6b4197-1da4-4106-a0f2-775312dead85"
		},
		"46545c21-bc20-4367-b0cb-c62dd5869f99": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "450,121 621,121",
			"sourceSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"targetSymbol": "80092972-c7e1-4f36-8199-80f1a29f0d36",
			"object": "1ebababa-8c7e-4787-bce1-6d25513ac7db"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 11,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 4,
			"exclusivegateway": 1
		},
		"98bcf0f7-abee-47c7-80f3-c10100529605": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/checkDecision.js",
			"id": "scripttask3",
			"name": "Check Decision"
		},
		"a1a604c9-615b-473a-9684-e318650a8427": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 745.625,
			"y": 246.875,
			"width": 100,
			"height": 60,
			"object": "98bcf0f7-abee-47c7-80f3-c10100529605"
		},
		"e9bb6a41-98c9-4bcd-ae09-b7106e4157ff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "98bcf0f7-abee-47c7-80f3-c10100529605",
			"targetRef": "d66961fe-59bc-4822-85ae-60067ebae774"
		},
		"5d6e0cd7-69b1-4789-9500-fc00ff3a4d16": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "795.625,276.8125 937.75,276.8125",
			"sourceSymbol": "a1a604c9-615b-473a-9684-e318650a8427",
			"targetSymbol": "ebf911c0-fd82-48a9-8c68-9d7811a6c9fd",
			"object": "e9bb6a41-98c9-4bcd-ae09-b7106e4157ff"
		},
		"23ae54d4-5885-4ca7-9520-6c9fd9488216": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/checkSubmit.js",
			"id": "scripttask4",
			"name": "Check Submit"
		},
		"5858b930-1692-4cfc-983b-a62de4d257cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 574,
			"y": 166.5,
			"width": 100,
			"height": 60,
			"object": "23ae54d4-5885-4ca7-9520-6c9fd9488216"
		},
		"149e61bf-0f46-4abd-8f99-d6876d117a9a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "23ae54d4-5885-4ca7-9520-6c9fd9488216",
			"targetRef": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"164b2d43-4486-414a-93c9-5c0f55df74aa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "624,196.5 624,277",
			"sourceSymbol": "5858b930-1692-4cfc-983b-a62de4d257cb",
			"targetSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"object": "149e61bf-0f46-4abd-8f99-d6876d117a9a"
		}
	}
}