const MulticraftAPI = require('multicraft-api-node');

const api = new MulticraftAPI({
  url: "https://budget.bisecthosting.com/api.php",
    user: "MittelDank",
    key: "YRPCqyJtDU64Xa"
});

api.sendConsoleCommand({server_id: 107744, command: "tempmute Bobistan 1m take that!!!!"})
    .then((data) => console.log(data))
    .catch((err) => console.error(err));

console.log(process.argv[2])
console.log(process.argv[3])
