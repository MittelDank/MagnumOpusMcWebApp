const MulticraftAPI = require('multicraft-api-node');

const api = new MulticraftAPI({
  url: "https://budget.bisecthosting.com/api.php",
    user: "MittelDank",
    key: "YRPCqyJtDU64Xa"
});

api.sendConsoleCommand({server_id: 107744, command: "msg Hellowarz hello titties mate"})
    .then((data) => console.log(data))
    .catch((err) => console.error(err));

console.log(process.argv[2])
console.log(process.argv[3])
