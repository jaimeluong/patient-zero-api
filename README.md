# Patient Zero API

Patient Zero API is the API-only version of my [Patient Zero](https://github.com/jaimeluong/patient-zero) full-stack app, intended for use alongside the front-end located [here](https://github.com/jaimeluong/patient-zero-frontend).

This back-end API supports create, read, update, and delete operations on providers, patients, and appointments. All communication is accomplished through JSON across HTTP requests, with data stored in a PostgreSQL database. This API is also RESTful, meaning it conforms to the constraints of REST architectural style. The client, a user or other web app, can communicate with this app to receive and request data as requested.

- **Ruby version:** 3.1.2

- **Rails version:** 7.0.4.2

- **System/gem dependencies:** Ruby, Rails, PostgreSQL, rack-cors (to allow cross-origin resource sharing)

## Run application

After cloning and starting API server, the app will be hosted on port 3000 at [localhost](http://localhost:3000/).

```
$ git clone git@github.com:jaimeluong/patient-zero-api.git
$ cd patient-zero-api
$ rails s
```

You can interact with it using cURL, Postman, or any tool that can send HTTP requests.

## Notes

- This is the back-end API for a front-end app built with React and Bootstrap to render data and webpage content.