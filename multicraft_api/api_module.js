const MulticraftAPI = require('multicraft-api-node');

// Pass the url,user,key and also server_id,command to any of the api calls
const url = process.argv[2]
const user = process.argv[3]
const key = process.argv[4]
const server_id = process.argv[5]
const command = process.argv[6]

const api = new MulticraftAPI({
  url: url,
  user: user,
  key: key
});

api.sendConsoleCommand({server_id: server_id, command: command})
    .then((data) => console.log(data))
    .catch((err) => console.error(err));
