from flask import Flask, render_template


app =  Flask(__name__,static_folder='static')

#just the main page
@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')


@app.route('/p/<int:post>')
def postRender(post):

    return str(post)
# title
# text
# coments


@app.route('/t/<topic>/', methods=['GET'])
def topic(topic):

    return topic
# the lasts post on this topic


if __name__=="__main__":
    app.run(debug=True)