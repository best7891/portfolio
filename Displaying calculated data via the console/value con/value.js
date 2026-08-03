
let products = [
    ['1/10/67', 'นมสดเเบอรี่'],
    ['2/10/67', 'นมหวาน'],
    ['3/10/67', 'นมจืด'],
    ['5/10/67', 'นมหวาน']
];

console.log('สินค้าเริ่มแรก:');
for(let i=0; i < products.length; i++){
    console.log(`ชนิดสินค้า ${products[i][1]}, วันหมดอายุ ${products[i][0]}`);
}


console.log('สินค้าที่เหลือหนึ่งชิ้น หลังจากการขาย:');
for(let i=2; i < products.length; i++){
    console.log(`ชนิดสินค้า ${products[i][1]}, วันหมดอายุ ${products[i][0]}`);
}


products = [
    ['3/10/67', 'นมจืด'],
    ['6/10/67', 'นมจืด'],
    ['10/10/67', 'นมจืด'],
    ['15/10/67', 'นมหวาน']
];

for(let b=4; b < products.length; b++){
    console.log(`ชนิดสินค้า ${products[b][1]}, วันหมดอายุ ${products[b][0]}`);
}

console.log('สินค้าที่เหลือทั้งหมด ณ ตอนนี้:');
for(let i = 0; i < products.length; i++)
{
    for(let j = 0; j < products[i].length; j++)
    {
        console.log(products[i][j]);
    }
}
