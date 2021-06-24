using CovidService as service from '../../srv/CovidReport-service';

annotate CovidService.uscovid with @(
    odata.draft.enabled:true,
    
    UI : {
    SelectionFields     : [
        ID,
        county
    ],
    FieldGroup #fgroup1 : {
        Label : 'Confirmed',
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : confirmedCases,
                Label : 'Cases',
            },
            {
                $Type : 'UI.DataField',
                Value : confirmedDeaths,
                Label : 'Deths',
            },
        ],
    },
    FieldGroup #fgroup2 : {
        Label : 'Probable',
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : probableCases,
                Label : 'Cases',
            },
            {
                $Type : 'UI.DataField',
                Value : probableDeaths,
                Label : 'Deths',
            },
        ],
    },
    DataPoint  : {
        $Type : 'UI.DataPointType',
        Value : state,
        Title : 'State info',
      
       
    },
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'covidcase',
        TypeNamePlural : 'coviccases',
        Title : {
            $Type : 'UI.DataField',
            Value : county,
            Label : 'Contry',
        },
        Description : {
            $Type : 'UI.DataField',
            Value : state,
            Label : 'State',
        },
    },
    HeaderFacets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#fgroup1',
            Label : 'Confirmed',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#fgroup2',
            Label : 'Probable',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint',
            Label : 'State',
        },
    ],

    Facets  : [
       
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#fgroup1',
            Label : 'Confirmed Cases',
        },
         {
            $Type : 'UI.ReferenceFacet',
            Target : 'tocovidDetail/@UI.LineItem#covidetail',
            Label : 'Covid Records',
        },
    ],

});


annotate CovidService.uscovidDetail with @(UI : { 
    LineItem #covidetail : [
        {
            $Type : 'UI.DataField',
            Value : SID,
            Label : 'SID',
        },
        {
            $Type : 'UI.DataField',
            Value : ID_ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : state,
            Label : 'state',
         
        },
         {
             $Type : 'UI.DataField',
             Value : county,
             Label : 'Country',
           
         },
    ],
    DataPoint  #data: {
        $Type : 'UI.DataPointType',
        Value : SID,
        Title : 'SID',
      
       
    },

 });


