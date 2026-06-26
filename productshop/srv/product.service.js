const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { product } = this.entities;                  // Service projection
    const db = await cds.connect.to('db');
    const { product: DBProduct } = cds.entities('sap.cap.productshop'); // DB entity

    this.before('orderProduct', product, async (req) => {

        const ID = req.params[0].ID;

        const result = await SELECT.one
            .from(DBProduct)
            .columns('stock')
            .where({ ID });

        if (!result) {
            return req.error(404, 'Product not found');
        }

        if (req.data.stock > 200) {
            return req.error(400, 'Stock is too high');
        }
    });

    this.on('orderProduct', product, async (req) => {

        const ID = req.params[0].ID;

        const result = await SELECT.one
            .from(DBProduct)
            .columns('stock')
            .where({ ID });

        if (!result) {
            return req.error(404, 'Product not found');
        }

        const updatedStock = result.stock + req.data.stock;

        await db.run(
            UPDATE(DBProduct)
                .set({ stock: updatedStock })
                .where({ ID })
        );

        return req.notify(`Product stock to ${updatedStock} updated successfully `);
    });

});