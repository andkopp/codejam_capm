const cds = require('@sap/cds')

module.exports = srv => {
    console.log('Service name:', srv.name)
    if (srv.name === 'CatalogService') {
        srv.after ('READ', 'Books', each => {
            if (each.stock > 500) each.title = '(5% off!) ' + each.title
        })
    }
}