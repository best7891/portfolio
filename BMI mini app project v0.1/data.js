let weight;
let height;
let bmi;
let textResult;

weight = Number(prompt("น้ำหนัก kg"));
height = Number(prompt("ส่วนสูง cm"));

height = height / 100;
document.write("ส่วนสูง (เมตร): " + height + "<br>");

bmi = weight / (height * height);
document.write("BMI: " + bmi + "<br>");

if (bmi > 40) {
    document.write("อ้วนระดับที่3");
}
else if (bmi > 30) {
    document.write("อ้วนระดับที่2");
}
else if (bmi > 25) {
    document.write("อ้วนระดับที่1");
}
else if (bmi > 21) {
    document.write("อ้วนระดับที่มากกว่าเกณ์");
}
else if (bmi > 20) {
    document.write("ต่ำกว่าเกณ์");
}
else if (bmi > 10) {
    document.write("น้อยกว่าเกณ์");
}