const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

    // this.on('READ', "Computers", async (req) => {

    //     const computers = await cds.tx(req).run(req.query);
    //     const computers_final = [];

    //     console.log(computers);
        
    //     for (i=0; i<computers.length; i++)
    //     {
            
    //         if (computers[i].name === 'HP')
    //         {
    //             computers[i].name = Hewlett-Packard;
    //             computers_final.push(computers[i])
    //         }
    //     }
        
    //     return computers_final;

    // })
})