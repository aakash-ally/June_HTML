
const cloth = document.getElementById('clothes');
const access = document.getElementById('accessories');

for(let product of productList){


    let card = document.createElement('div');
    card.className = "card";
    let imgc = document.createElement('div');
    imgc.className= "im";
    let imgtag = document.createElement('img');
    imgtag.src = product.preview;
    imgc.appendChild(imgtag);
    card.appendChild(imgc);


    let det = document.createElement('div');
    det.className = "details";
    let name = document.createElement('h3');
    name.textContent = product.name;
    let brand = document.createElement('h4');
    brand.textContent = product.brand;
    let price = document.createElement('h5');
    price.textContent = "Rs "+product.price;

    det.appendChild(name);
    det.appendChild(brand);
    det.appendChild(price);
    card.appendChild(det);

    if(product.isAccessory){
        access.appendChild(card);
    }
    else{
        cloth.appendChild(card);
    }

}