const companies = [
    {name: "adriano lanches", category:"food", start:2015, end:2030},
    {name: "APAE", category:"education", start:1900, end:2020},
    {name: "Laticinio", category:"food", start:1987, end:2002},
    {name: "Company A", category:"research", start:2000, end:2020},
    {name: "Company B", category:"medications", start:1970, end:2000},
]

const sortedCompanies = companies.sort((a,b) => a.start < b.start ? 1: -1);
// console.log(sortedCompanies); //descending

var items = [
    { name: 'Edward', value: 21 },
    { name: 'Sharpe', value: 37 },
    { name: 'And', value: 45 },
    { name: 'The', value: -12 },
    { name: 'Magnetic' },
    { name: 'Zeros', value: 37 }
    ];
const sorted = items.sort(function (a, b) {
    if (a.name > b.name) {
    return 1; //se a.name for maior que b, precisa ser retornado um valor maior
    }
    if (a.name < b.name) {
    return -1; //se a.name for menor que b, precisa ser retornado um valor menor
    }
    // a must be equal to b
    return 0; //se forem iguais, retorne um valor neutro
    });
    
    console.log(sorted);