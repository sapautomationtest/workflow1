{
	"contents": {
		"2ca96dc9-2beb-45dc-8686-92b860c2039d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "BuProjectSignOff",
			"subject": "BU project sign-off",
			"businessKey": "${context.requestId}",
			"name": "approvals",
			"documentation": "Approvals Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"7d5c3f19-7792-4557-9495-4c98f1d9efe9": {
					"name": "."
				}
			},
			"activities": {
				"e36867d1-fdbe-4bdc-9237-89722201e13a": {
					"name": "Sign-off Request"
				},
				"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
					"name": "Prepare Rule"
				},
				"daa2f18c-87c8-47a3-9042-c70d11548c68": {
					"name": "Prepare Context"
				},
				"c932e574-e2c3-498d-ad1e-b4c4708bcd23": {
					"name": "Process Decision"
				},
				"afcd7356-4f12-4cd3-bce1-afae6870e0be": {
					"name": "Submit Sign-off"
				},
				"1feb0fff-31b3-4eb5-88eb-7fd20ff48b09": {
					"name": "Verify form"
				},
				"39de2a4b-9814-40ba-8487-29ed83104b1b": {
					"name": "."
				},
				"c54a0e25-7c32-422a-8125-996a3d25e446": {
					"name": "Process Submit"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6bb89308-86bb-461c-a0b0-d06c7dd57235": {
					"name": "SequenceFlow3"
				},
				"1b02e3d1-9fde-424f-b1f7-317ce561668b": {
					"name": "SequenceFlow5"
				},
				"72a471cb-e0e5-4ca8-a369-383c61013ca0": {
					"name": "Submit"
				},
				"2332b5c3-d4fd-4376-80d5-861459569a43": {
					"name": "SequenceFlow11"
				},
				"e2eba33e-cb72-40d7-96d8-384becbff4fc": {
					"name": "Verified"
				},
				"a963119c-39db-4bad-a573-69cac3f1cb76": {
					"name": "Rework - Missing data"
				},
				"77f16fe7-67da-439c-b305-34734c02b317": {
					"name": "SequenceFlow14"
				},
				"46ff3576-90a6-4c6c-a26f-a5cbcb9a4992": {
					"name": "Cancel"
				},
				"228d4769-921e-4d03-b0e5-e53fae008b7b": {
					"name": "SequenceFlow16"
				},
				"8ee27df0-f902-497e-bffd-02938a50f0e9": {
					"name": "SequenceFlow17"
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
				"d43ffeb8-caea-4664-9ac2-bd37f2645dae": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"7d5c3f19-7792-4557-9495-4c98f1d9efe9": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "."
		},
		"e36867d1-fdbe-4bdc-9237-89722201e13a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for Project ${context.Scenario} sign-off",
			"description": "",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approver}",
			"formReference": "/forms/WF_BU_approval/BuApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "buapprovalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Sign-off Request"
		},
		"00de1d3b-e558-4350-a64c-42b65d60fcdb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WF_BU_approval/prepareRule.js",
			"id": "scripttask1",
			"name": "Prepare Rule",
			"documentation": "Get users BU and prepare call to the Business Rule to determine approver"
		},
		"daa2f18c-87c8-47a3-9042-c70d11548c68": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WF_BU_approval/prepareContext.js",
			"id": "scripttask2",
			"name": "Prepare Context"
		},
		"c932e574-e2c3-498d-ad1e-b4c4708bcd23": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WF_BU_approval/processDecision.js",
			"id": "scripttask5",
			"name": "Process Decision"
		},
		"afcd7356-4f12-4cd3-bce1-afae6870e0be": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Submit Sign-off",
			"default": "72a471cb-e0e5-4ca8-a369-383c61013ca0"
		},
		"1feb0fff-31b3-4eb5-88eb-7fd20ff48b09": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval request from ${info.startedBy}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approver}",
			"formReference": "/forms/WF_BU_approval/BuApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "buapprovalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Verify form"
		},
		"39de2a4b-9814-40ba-8487-29ed83104b1b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": ".",
			"default": "e2eba33e-cb72-40d7-96d8-384becbff4fc"
		},
		"c54a0e25-7c32-422a-8125-996a3d25e446": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WF_BU_approval/processDecision.js",
			"id": "scripttask5",
			"name": "Process Submit"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "00de1d3b-e558-4350-a64c-42b65d60fcdb"
		},
		"6bb89308-86bb-461c-a0b0-d06c7dd57235": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "00de1d3b-e558-4350-a64c-42b65d60fcdb",
			"targetRef": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"1b02e3d1-9fde-424f-b1f7-317ce561668b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "daa2f18c-87c8-47a3-9042-c70d11548c68",
			"targetRef": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"72a471cb-e0e5-4ca8-a369-383c61013ca0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "Submit",
			"sourceRef": "afcd7356-4f12-4cd3-bce1-afae6870e0be",
			"targetRef": "1feb0fff-31b3-4eb5-88eb-7fd20ff48b09"
		},
		"2332b5c3-d4fd-4376-80d5-861459569a43": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "1feb0fff-31b3-4eb5-88eb-7fd20ff48b09",
			"targetRef": "c932e574-e2c3-498d-ad1e-b4c4708bcd23"
		},
		"e2eba33e-cb72-40d7-96d8-384becbff4fc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "Verified",
			"sourceRef": "39de2a4b-9814-40ba-8487-29ed83104b1b",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"a963119c-39db-4bad-a573-69cac3f1cb76": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"reject\"}",
			"id": "sequenceflow13",
			"name": "Rework - Missing data",
			"sourceRef": "39de2a4b-9814-40ba-8487-29ed83104b1b",
			"targetRef": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"77f16fe7-67da-439c-b305-34734c02b317": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "e36867d1-fdbe-4bdc-9237-89722201e13a",
			"targetRef": "c54a0e25-7c32-422a-8125-996a3d25e446"
		},
		"46ff3576-90a6-4c6c-a26f-a5cbcb9a4992": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"reject\"}",
			"id": "sequenceflow15",
			"name": "Cancel",
			"sourceRef": "afcd7356-4f12-4cd3-bce1-afae6870e0be",
			"targetRef": "7d5c3f19-7792-4557-9495-4c98f1d9efe9"
		},
		"228d4769-921e-4d03-b0e5-e53fae008b7b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "c932e574-e2c3-498d-ad1e-b4c4708bcd23",
			"targetRef": "39de2a4b-9814-40ba-8487-29ed83104b1b"
		},
		"8ee27df0-f902-497e-bffd-02938a50f0e9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "c54a0e25-7c32-422a-8125-996a3d25e446",
			"targetRef": "afcd7356-4f12-4cd3-bce1-afae6870e0be"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4e80e03c-ffdf-4bed-a624-f73c96dc1516": {},
				"32f954de-adee-45bc-b75d-954e5df27bbc": {},
				"d018590a-f0a6-4aa2-828e-55bf5d9398f0": {},
				"daaedb33-ea49-4c9f-9117-452e220e6d86": {},
				"ebd0a78e-8495-4320-b0bc-71c942fd1468": {},
				"ac8d67f5-855e-4902-b416-062d35749b05": {},
				"2dd1b9b7-7521-4b39-a49b-10952711f30c": {},
				"cbf33a4c-17ce-40f5-a736-edbf349293df": {},
				"cdfd5077-4669-47cf-8471-5e68db876c5e": {},
				"d20486de-53e6-4280-b4c0-8f540291eddd": {},
				"87422b5d-98da-4498-a233-78f891838770": {},
				"15492726-a3c5-40f5-ad53-87e9f2125b34": {},
				"04f88925-0d42-45ec-947a-7cd895a60b04": {},
				"16708695-e106-4b0e-b74a-d6a075064990": {},
				"bdee7b0d-458e-481f-aec3-075182bad0a7": {},
				"07dc09b4-91b7-4ca1-b15f-e12a6efca72f": {},
				"1a9c84fb-1bba-408a-9eb8-5d648b151b6b": {},
				"2cbb6c70-dfe5-4a98-bf9b-94ea2de9a428": {},
				"24994a82-5eef-4a49-9a6b-ae7384a79479": {}
			}
		},
		"d43ffeb8-caea-4664-9ac2-bd37f2645dae": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/WF_BU_approval/sample_input.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -160,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1233,
			"y": 96,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-144,116 84,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4e80e03c-ffdf-4bed-a624-f73c96dc1516": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 285,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "e36867d1-fdbe-4bdc-9237-89722201e13a"
		},
		"32f954de-adee-45bc-b75d-954e5df27bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 34,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "00de1d3b-e558-4350-a64c-42b65d60fcdb"
		},
		"d018590a-f0a6-4aa2-828e-55bf5d9398f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "84,116 203,116",
			"sourceSymbol": "32f954de-adee-45bc-b75d-954e5df27bbc",
			"targetSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"object": "6bb89308-86bb-461c-a0b0-d06c7dd57235"
		},
		"daaedb33-ea49-4c9f-9117-452e220e6d86": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 153,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "daa2f18c-87c8-47a3-9042-c70d11548c68"
		},
		"ebd0a78e-8495-4320-b0bc-71c942fd1468": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "203,116 335,116",
			"sourceSymbol": "daaedb33-ea49-4c9f-9117-452e220e6d86",
			"targetSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"object": "1b02e3d1-9fde-424f-b1f7-317ce561668b"
		},
		"ac8d67f5-855e-4902-b416-062d35749b05": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 876.25,
			"y": 85.75,
			"width": 100,
			"height": 60,
			"object": "c932e574-e2c3-498d-ad1e-b4c4708bcd23"
		},
		"2dd1b9b7-7521-4b39-a49b-10952711f30c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 579.875,
			"y": 95.125,
			"object": "afcd7356-4f12-4cd3-bce1-afae6870e0be"
		},
		"cbf33a4c-17ce-40f5-a736-edbf349293df": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "600.875,116.0625 772,116.0625",
			"sourceSymbol": "2dd1b9b7-7521-4b39-a49b-10952711f30c",
			"targetSymbol": "cdfd5077-4669-47cf-8471-5e68db876c5e",
			"object": "72a471cb-e0e5-4ca8-a369-383c61013ca0"
		},
		"cdfd5077-4669-47cf-8471-5e68db876c5e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 722,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "1feb0fff-31b3-4eb5-88eb-7fd20ff48b09"
		},
		"d20486de-53e6-4280-b4c0-8f540291eddd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "772,115.875 926.25,115.875",
			"sourceSymbol": "cdfd5077-4669-47cf-8471-5e68db876c5e",
			"targetSymbol": "ac8d67f5-855e-4902-b416-062d35749b05",
			"object": "2332b5c3-d4fd-4376-80d5-861459569a43"
		},
		"87422b5d-98da-4498-a233-78f891838770": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1082,
			"y": 96,
			"object": "39de2a4b-9814-40ba-8487-29ed83104b1b"
		},
		"15492726-a3c5-40f5-ad53-87e9f2125b34": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1103,115.25 1250.5,115.25",
			"sourceSymbol": "87422b5d-98da-4498-a233-78f891838770",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e2eba33e-cb72-40d7-96d8-384becbff4fc"
		},
		"04f88925-0d42-45ec-947a-7cd895a60b04": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1105,117 1105,196.5 335,196.5 335,145.5",
			"sourceSymbol": "87422b5d-98da-4498-a233-78f891838770",
			"targetSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"object": "a963119c-39db-4bad-a573-69cac3f1cb76"
		},
		"16708695-e106-4b0e-b74a-d6a075064990": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "335,116.375 490.25,116.375",
			"sourceSymbol": "4e80e03c-ffdf-4bed-a624-f73c96dc1516",
			"targetSymbol": "2cbb6c70-dfe5-4a98-bf9b-94ea2de9a428",
			"object": "77f16fe7-67da-439c-b305-34734c02b317"
		},
		"bdee7b0d-458e-481f-aec3-075182bad0a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 579.5,
			"y": -95.5,
			"width": 35,
			"height": 35,
			"object": "7d5c3f19-7792-4557-9495-4c98f1d9efe9"
		},
		"07dc09b4-91b7-4ca1-b15f-e12a6efca72f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "598.9375,116.125 598.9375,-78",
			"sourceSymbol": "2dd1b9b7-7521-4b39-a49b-10952711f30c",
			"targetSymbol": "bdee7b0d-458e-481f-aec3-075182bad0a7",
			"object": "46ff3576-90a6-4c6c-a26f-a5cbcb9a4992"
		},
		"1a9c84fb-1bba-408a-9eb8-5d648b151b6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "926.25,116.375 1103,116.375",
			"sourceSymbol": "ac8d67f5-855e-4902-b416-062d35749b05",
			"targetSymbol": "87422b5d-98da-4498-a233-78f891838770",
			"object": "228d4769-921e-4d03-b0e5-e53fae008b7b"
		},
		"2cbb6c70-dfe5-4a98-bf9b-94ea2de9a428": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 440.25,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "c54a0e25-7c32-422a-8125-996a3d25e446"
		},
		"24994a82-5eef-4a49-9a6b-ae7384a79479": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490.25,116.4375 600.875,116.4375",
			"sourceSymbol": "2cbb6c70-dfe5-4a98-bf9b-94ea2de9a428",
			"targetSymbol": "2dd1b9b7-7521-4b39-a49b-10952711f30c",
			"object": "8ee27df0-f902-497e-bffd-02938a50f0e9"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 17,
			"startevent": 1,
			"endevent": 3,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 5,
			"exclusivegateway": 2
		}
	}
}