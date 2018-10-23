from CTFd import create_app
import os

app = create_app()

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 4000))
    print(port)
    app.run(debug=False, threaded=True, host="0.0.0.0", port=port)