#!/usr/bin/env python3
"""returns schools by topics they teach"""


def schools_by_topic(mongo_collection, topic):
    """
    Args:
        mongo_collection : collection
        topic : exact topic
    """
    return list(mongo_collection.find({"topics": topic}))
