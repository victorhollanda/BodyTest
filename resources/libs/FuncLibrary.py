import psycopg2
from logging import info


class FuncLibrary():

    def connect(self):
        return psycopg2.connect(
            host='ec2-107-22-122-106.compute-1.amazonaws.com',
            database='d3llohsva9oleu',
            user='vuvwuadrwunxun',
            password='cced658de9a7630a35cea766e363e1d6c83bc38670c25fe66131fc62bb38f9b0'
        )

    def remove_student(self, email):

        query = "delete from students where email = '{}'".format(email)

        info(query)

        conn = self.connect()

        cur = conn.cursor()
        cur.execute(query)
        conn.commit()
        conn.close()

    def insert_student(self, student):

        self.remove_student(student['email'])

        query = ("insert into students (name, email, age, weight, feet_tall, created_at, updated_at)"
                 "values('{}', '{}', {}, {}, {}, now(), now());"
                 .format(student['nome'], student['email'], student['idade'], student['peso'], student['altura']))

        info(query)

        conn = self.connect()

        cur = conn.cursor()
        cur.execute(query)
        conn.commit()
        conn.close()
