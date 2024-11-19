#!/usr/bin/env python3
"""inserting in school"""


def insert_school(mongo_collection, **kwargs):
    """
    inserting in mongo_collection the arguments
    """
    return mongo_collection.insert(kwargs)
