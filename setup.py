#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import glob
import ntpath


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


setup(
    name="package_create_incident",
    display_name="My Custom App",
    version="1.0.0",
    license="GNU",
    author="cnsys",
    author_email="you@example.com",
    url="http://www.cnsys.bg",
    description="Resilient Circuits Components for 'package_create_incident'",
    long_description="""Resilient Circuits Components for 'package_create_incident'""",
    install_requires=[
        "resilient-circuits>=30.0.0",
        "resilient-lib>=39.0.0"
    ],
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = package_create_incident.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./package_create_incident/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = package_create_incident.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = package_create_incident.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = package_create_incident.util.selftest:selftest_function"]
    }
)
