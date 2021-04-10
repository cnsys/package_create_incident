# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for package_create_incident"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the package_create_incident package
    """
    return {
        "package": u"package_create_incident",
        "message_destinations": [u"create_incident"],
        "functions": [u"fn_create_incident"],
        "workflows": [u"wf_create_incident"],
        "actions": [u"Create Incident"],
        "incident_fields": [],
        "incident_artifact_types": [],
        "datatables": [],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM Resilient Platform Version: 40.1.50

    Contents:
    - Message Destinations:
        - create_incident
    - Functions:
        - fn_create_incident
    - Workflows:
        - wf_create_incident
    - Rules:
        - Create Incident
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)