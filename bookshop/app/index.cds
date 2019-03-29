using from './browse/fiori-service';
using my.bookshop as my from '../db/data-model';

annotate my.Books with @(
    UI: {
        Identification: [ {Value:title} ],
        SelectionFields: [ ID, author.name, stock ],
        LineItem: [
            {Value: ID},
            {Value: title},
            {Value: author.name},
            {Value: author_ID, Label:'{i18n>AuthorID}'},
            {Value: stock}
        ],
        HeaderInfo: {
            TypeName: '{i18n>Book}',
            TypeNamePlural: '{i18n>Books}',
            Title: {Value: title},
            Description: {Value: author.name}
        }
    },
);

// Books Elements
annotate my.Books with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter;
    title @title:'{i18n>Title}';
    author @title:'{i18n>AuthorID}';
    stock @title:'{i18n>Stock}';
}

// Authors Elements
annotate my.Authors with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter;
    name @title:'{i18n>AuthorName}';
}