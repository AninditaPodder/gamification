from flask import Flask, url_for, redirect, render_template, request
import pymysql

app = Flask(__name__)
# 这里放数据库的信息用户,密码,数据库
db = {'host': 'localhost', 'user': 'root', 'password': 'Poilkj9544', 'db': 'riddle', 'charset': 'utf8'}
db = pymysql.connect(**db)
cursor = db.cursor()


@app.route('/riddle', methods=['GET', 'POST'])
def riddle():
    nums = []
    sql = "select * from riddle.riddle"
    try:
        cursor.execute(sql)
        result = cursor.fetchall()
        num = len(result)
        for i in range(2, 1 + num):
            nums.append(i)
    except pymysql.err:
        print("error!!")
    if request.method == 'POST':
        ids = request.form['ids']
        sql = f"select * from riddle.riddle where ids={ids}"
        cursor.execute(sql)
        result = cursor.fetchall()

        data = []
        for i in list(result):
            for j in i:
                data.append(j)
        print(data)
        return render_template('riddle.html', nums=nums, data=data)
    data = [0, 0, 0, 0, 0, 0, 0]
    return render_template('riddle.html', nums=nums, data=data)


if __name__ == '__main__':
    app.run(debug=True)
