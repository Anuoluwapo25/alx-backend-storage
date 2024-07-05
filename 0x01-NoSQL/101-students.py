#!/usr/bin/env python3
"""mongo collection """


def top_students(mongo_collection):
    """pipipline_
    """
    mongo_collection.students
    pipeline = [
      {
          "$unwind": "$topics"
      },
      {
          "$group": {
              "_id": "$_id",
              "name": {"$first": "$name"},
              "averageScore": {"$avg": "$topics.score"}
          }
      },
      {
          "$sort": {"averageScore": -1}
      }
    ]

    students = list(mongo_collection.aggregate(pipeline))
    return students
