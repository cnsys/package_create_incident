# -*- coding: utf-8 -*-
"""Function implementation"""

import logging
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError
from resilient_lib import ResultPayload, RequestsCommon, validate_fields

PACKAGE_NAME = "package_create_incident"
FN_NAME = "fn_create_incident"


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'fn_create_incident''"""

    def __init__(self, opts):
        """Constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.fn_options = opts.get(PACKAGE_NAME, {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.fn_options = opts.get(PACKAGE_NAME, {})

    @function(FN_NAME)
    def _fn_create_incident_function(self, event, *args, **kwargs):
        """Function: Create new Incident using REST API"""
        try:
            LOG = logging.getLogger(__name__)
            rc = RequestsCommon(self.opts, self.fn_options)
            rp = ResultPayload(PACKAGE_NAME, **kwargs)

            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            yield StatusMessage("Starting '{0}' running in workflow '{1}'".format(FN_NAME, wf_instance_id))

            # Get and validate app configs
            # app_configs = validate_fields([
            #     {"name": "api_key", "placeholder": "<your-api-key>"},
            #     {"name": "base_url", "placeholder": "<api-base_url>"}],
            #     self.fn_options)

            # Get and validate required function inputs:
            # If input is optional, remove it from list
            # Optional inputs will still be available in fn_inputs
            fn_inputs = validate_fields(
                ["input_field_a",
                 "input_fileld_b"],
                kwargs)

            LOG.info("'{0}' inputs: %s", fn_inputs)

            yield StatusMessage("Validations complete. Starting business logic")

            ##############################################
            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE #
            ##############################################
            my_summa = fn_inputs.get("input_field_a") + fn_inputs.get("input_fileld_b")
            results = {
                "Summa": my_summa
            }
            # Call API implemtation example:
            # params = {
            #     "key": app_configs.get("api_key"),
            #     "ip_address": fn_inputs.get("artifact_value")
            # }
            #
            # response = rc.execute_call_v2(
            #     method="get",
            #     url=app_configs.get("api_url")
            #     params=params
            # )
            #
            # results = rp.done(True, response.json())

            ##############################################

            yield StatusMessage("Finished '{0}' that was running in workflow '{1}'".format(FN_NAME, wf_instance_id))

            #results = rp.done(True, {"mock_key": "Mock Value!"})

            LOG.info("'%s' complete", FN_NAME)

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception as e:
            yield FunctionError(e)
