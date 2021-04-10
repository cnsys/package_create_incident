{
  "action_order": [], 
  "actions": [
    {
      "automations": [], 
      "conditions": [], 
      "enabled": true, 
      "export_key": "Create Incident", 
      "id": 156, 
      "logic_type": "all", 
      "message_destinations": [], 
      "name": "Create Incident", 
      "object_type": "incident", 
      "tags": [], 
      "timeout_seconds": 86400, 
      "type": 1, 
      "uuid": "1bfa5d62-cb46-4ef8-b692-d950ac2bdf82", 
      "view_items": [], 
      "workflows": [
        "wf_create_incident"
      ]
    }
  ], 
  "apps": [], 
  "automatic_tasks": [], 
  "export_date": 1617635981609, 
  "export_format_version": 2, 
  "fields": [
    {
      "allow_default_value": false, 
      "blank_option": false, 
      "calculated": false, 
      "changeable": true, 
      "chosen": false, 
      "default_chosen_by_server": false, 
      "deprecated": false, 
      "export_key": "__function/input_field_a", 
      "hide_notification": false, 
      "id": 560, 
      "input_type": "text", 
      "internal": false, 
      "is_tracked": false, 
      "name": "input_field_a", 
      "operation_perms": {}, 
      "operations": [], 
      "placeholder": "", 
      "prefix": null, 
      "read_only": false, 
      "rich_text": false, 
      "tags": [], 
      "templates": [], 
      "text": "input_field_a", 
      "tooltip": "Variable A", 
      "type_id": 11, 
      "uuid": "da9b338a-5ee6-4fe2-a9fc-85cc972e77b4", 
      "values": []
    }, 
    {
      "allow_default_value": false, 
      "blank_option": false, 
      "calculated": false, 
      "changeable": true, 
      "chosen": false, 
      "default_chosen_by_server": false, 
      "deprecated": false, 
      "export_key": "__function/input_fileld_b", 
      "hide_notification": false, 
      "id": 561, 
      "input_type": "text", 
      "internal": false, 
      "is_tracked": false, 
      "name": "input_fileld_b", 
      "operation_perms": {}, 
      "operations": [], 
      "placeholder": "", 
      "prefix": null, 
      "read_only": false, 
      "rich_text": false, 
      "tags": [], 
      "templates": [], 
      "text": "input_fileld_b", 
      "tooltip": "Variable B", 
      "type_id": 11, 
      "uuid": "deda406b-0a79-443f-aea9-7aaf98e7eab0", 
      "values": []
    }, 
    {
      "export_key": "incident/internal_customizations_field", 
      "id": 0, 
      "input_type": "text", 
      "internal": true, 
      "name": "internal_customizations_field", 
      "read_only": true, 
      "text": "Customizations Field (internal)", 
      "type_id": 0, 
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ], 
  "functions": [
    {
      "apps": [], 
      "created_date": 1617087853638, 
      "creator": {
        "display_name": "Anton Bondoff", 
        "id": 4, 
        "name": "a.bondoff@cnsys.bg", 
        "type": "user"
      }, 
      "description": {
        "content": "Create new Incident using REST API", 
        "format": "text"
      }, 
      "destination_handle": "create_incident", 
      "display_name": "Create Incident", 
      "export_key": "fn_create_incident", 
      "id": 102, 
      "last_modified_by": {
        "display_name": "Anton Bondoff", 
        "id": 4, 
        "name": "a.bondoff@cnsys.bg", 
        "type": "user"
      }, 
      "last_modified_time": 1617635181431, 
      "name": "fn_create_incident", 
      "tags": [], 
      "uuid": "dff58b0a-b219-424b-bd71-d0f9a09e37e7", 
      "version": 4, 
      "view_items": [
        {
          "content": "da9b338a-5ee6-4fe2-a9fc-85cc972e77b4", 
          "element": "field_uuid", 
          "field_type": "__function", 
          "show_if": null, 
          "show_link_header": false, 
          "step_label": null
        }, 
        {
          "content": "deda406b-0a79-443f-aea9-7aaf98e7eab0", 
          "element": "field_uuid", 
          "field_type": "__function", 
          "show_if": null, 
          "show_link_header": false, 
          "step_label": null
        }
      ], 
      "workflows": [
        {
          "actions": [], 
          "description": null, 
          "name": "Create Incident", 
          "object_type": "incident", 
          "programmatic_name": "wf_create_incident", 
          "tags": [], 
          "uuid": null, 
          "workflow_id": 137
        }
      ]
    }
  ], 
  "geos": null, 
  "groups": null, 
  "id": 29, 
  "inbound_mailboxes": null, 
  "incident_artifact_types": [], 
  "incident_types": [
    {
      "create_date": 1617636183259, 
      "description": "Customization Packages (internal)", 
      "enabled": false, 
      "export_key": "Customization Packages (internal)", 
      "hidden": false, 
      "id": 0, 
      "name": "Customization Packages (internal)", 
      "parent_id": null, 
      "system": false, 
      "update_date": 1617636183259, 
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ], 
  "industries": null, 
  "layouts": [], 
  "locale": null, 
  "message_destinations": [
    {
      "api_keys": [], 
      "destination_type": 0, 
      "expect_ack": true, 
      "export_key": "create_incident", 
      "name": "create_incident", 
      "programmatic_name": "create_incident", 
      "tags": [], 
      "users": [
        "a.bondoff@cnsys.bg"
      ], 
      "uuid": "cc915b04-4f3b-4be5-aabf-3ea345bde191"
    }
  ], 
  "notifications": null, 
  "overrides": [], 
  "phases": [], 
  "regulators": null, 
  "roles": [], 
  "scripts": [], 
  "server_version": {
    "build_number": 50, 
    "major": 40, 
    "minor": 1, 
    "version": "40.1.50"
  }, 
  "tags": [], 
  "task_order": [], 
  "timeframes": null, 
  "types": [], 
  "workflows": [
    {
      "actions": [], 
      "content": {
        "version": 3, 
        "workflow_id": "wf_create_incident", 
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_create_incident\" isExecutable=\"true\" name=\"Create Incident\"\u003e\u003cdocumentation\u003e\u003c![CDATA[\u0414\u043e\u0431\u0430\u0432\u044f Note \u0432 \u0438\u043d\u0446\u0438\u0434\u0435\u043d\u0442\u0430 \u043a\u0430\u0442\u043e \u043f\u0440\u0435\u0441\u043c\u044f\u0442\u0430 \"input_a + input_b\" (\u0442\u0440\u0435\u0431\u0435 \u0434\u0430 \u0432\u044a\u0440\u043d\u0435 \u043e\u0441\u0435\u043c!)]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_01n3pwc\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_07dno6s\" name=\"Create Incident\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"dff58b0a-b219-424b-bd71-d0f9a09e37e7\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.input_field_a = 5\\ninputs.input_fileld_b = 3\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_01n3pwc\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_01v3cci\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_01n3pwc\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_07dno6s\"/\u003e\u003cendEvent id=\"EndEvent_15a81tj\"\u003e\u003cincoming\u003eSequenceFlow_01v3cci\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_01v3cci\" sourceRef=\"ServiceTask_07dno6s\" targetRef=\"EndEvent_15a81tj\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_07dno6s\" id=\"ServiceTask_07dno6s_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"420\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01n3pwc\" id=\"SequenceFlow_01n3pwc_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"420\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"309\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_15a81tj\" id=\"EndEvent_15a81tj_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"648\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"666\" y=\"228\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01v3cci\" id=\"SequenceFlow_01v3cci_di\"\u003e\u003comgdi:waypoint x=\"520\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"648\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"584\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      }, 
      "content_version": 3, 
      "creator_id": "a.bondoff@cnsys.bg", 
      "description": "\u0414\u043e\u0431\u0430\u0432\u044f Note \u0432 \u0438\u043d\u0446\u0438\u0434\u0435\u043d\u0442\u0430 \u043a\u0430\u0442\u043e \u043f\u0440\u0435\u0441\u043c\u044f\u0442\u0430 \"input_a + input_b\" (\u0442\u0440\u0435\u0431\u0435 \u0434\u0430 \u0432\u044a\u0440\u043d\u0435 \u043e\u0441\u0435\u043c!)", 
      "export_key": "wf_create_incident", 
      "last_modified_by": "a.bondoff@cnsys.bg", 
      "last_modified_time": 1617635080883, 
      "name": "Create Incident", 
      "object_type": "incident", 
      "programmatic_name": "wf_create_incident", 
      "tags": [], 
      "uuid": "e8c7e245-7dc0-4bed-ae02-bf044ae6e1c0", 
      "workflow_id": 137
    }
  ], 
  "workspaces": []
}
