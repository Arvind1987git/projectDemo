using productshop as service from '../../srv/product.service';
annotate service.product with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emision',
                Value : emision,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rating',
                Value : rating,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'category',
                Value : category,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'suplayer_ID',
                Value : suplayer_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'emision',
            Value : emision,
            Criticality : emision,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Value : category,
            Label : 'category',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#emisions',
            Label : '5 star',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productshop.orderProduct',
            Label : '{i18n>OrderProduct}',
            Inline : true,
        },
    ],
    UI.SelectionFields : [
        name,
        price,
        emision,
    ],
    UI.DataPoint #emision : {
        Value : emision,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #emision1 : {
        Value : emision,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #emisions : {
        Value : emisions,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #emision2 : {
        Value : emision,
        Visualization : #Progress,
        TargetValue : 100,
    },
    UI.DataPoint #emision3 : {
        Value : emision,
        Visualization : #Progress,
        TargetValue : 1000,
    },
);

annotate service.product with {
    suplayer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'suplayer',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : suplayer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'phone',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city',
            },
        ],
    }
};

annotate service.product with {
    name @Common.Label : 'name'
};

annotate service.product with {
    price @Common.Label : 'price'
};

annotate service.product with {
    emision @Common.Label : 'emision'
};

