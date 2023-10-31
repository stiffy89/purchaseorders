const cds = require('@sap/cds');


module.exports = cds.service.impl(async function () { 
    const gwservice = await cds.connect.to('gwsample');
    let srv = this;
    this.on('READ', 'Contacts', async(req, next) => {
        return next();
    })
})