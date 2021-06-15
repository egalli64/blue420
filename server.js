let express = require('express');
let cors = require('cors');
let app = express();

app.use(cors());
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/hello', function (req, res) {
    res.send('{"message": "Hello World!"}');
});

function controller(req, res) {
    let params = Object.keys(req.body).length ? req.body : req.query;

    let result = '<h1>Parameters</h1>\n';
    result += '<ul>\n'
    for (let item in params) {
        result += `<li>${item}: ${params[item]}</li>\n`;
    }
    result += '</ul>\n'

    res.send(result);
}

app.get('/test', controller);
app.post('/test', controller);

let port = process.env.PORT || 8080;
let ip = process.env.IP || 'localhost';

app.listen(port, ip, function () {
    console.log(`Listening on ${ip}:${port}`);
});