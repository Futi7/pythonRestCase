import mysql.connector



class Connector:
    def __init__(self):
        self.conn = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="",## Your password here
        database = "restCase"
        )

        self.db = self.conn.cursor()

    def insertRow(self, row):

        placeholders = ', '.join(['%s'] * len(row))
        cols = ', '.join(row.keys())
        sql = "INSERT INTO cars ( %s ) VALUES ( %s )" % (cols, placeholders)
        self.db.execute(sql, list(row.values()))
        
        

    def closeConnection(self):
        self.conn.commit()
        self.conn.close()