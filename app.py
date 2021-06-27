from flask import Flask, render_template, request, url_for, redirect, flash
import mysql.connector
from mysql.connector import errorcode

app = Flask(__name__)

config = {
  'user': 'root',
  'password': 'root',
  #'host': '127.0.0.1',
  'database': 'covid_survey',
}

try:
  cnx = mysql.connector.connect(**config)
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Verifique su usuario o contraseña")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else:
  cnx.close()

  # Setting
app.secret_key = 'mi_clave_secreta'

@app.route("/")
def index():
  return render_template('index.html')

@app.route("/add", methods=["POST"])
def add_register():
  cnx = mysql.connector.connect(**config)
  if request.method == 'POST':
    name = request.form['name']
    email = request.form['email']
    age = request.form['age']
    country = request.form['country']
    user_diagnosed = request.form['user_diagnosed']
    illExperience = request.form['illExperience']

    list_symptoms = request.form.getlist('symptoms')
    valores = ', '.join(list_symptoms)
    symptoms = (valores
    )

    comment = request.form['comment']

    cur = cnx.cursor()
    cur.execute("INSERT INTO REGISTER_DATA (full_name, email, age, country, diagnostic, dolor, sintomas, opinion) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)",
    (name, email, age, country, user_diagnosed, illExperience, symptoms, comment))

    cnx.commit()
    flash("Sus datos se agregaron correcamente")

  return redirect(url_for('index'))

if __name__ == '__main__':
  app.run(debug=True)