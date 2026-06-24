const cds = require('@sap/cds');
module.exports = cds.service.impl(async function (srv) {
    srv.on('myfunction', async (req) => {
        let result = 'supper cool ' + req.data.name;
        return result;
    }); 
    srv.on('myAction', async (req) => {
        let result = 'supper cool ' + req.data.name;
        return result;
    }); 
    
});