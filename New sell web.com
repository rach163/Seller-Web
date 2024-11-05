<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My E-commerce Store</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to My Online Store</h1>
        <button id="cartBtn">Cart (0)</button>
    </header>

    <main>
        <section id="products">
            <div class="product">
                <img src="product1.jpg" alt="Product 1">
                <h2>Product 1</h2>
                <p>$10.00</p>
                <button class="add-to-cart" data-product-id="1">Add to Cart</button>
            </div>

            <div class="product">
                <img src="product2.jpg" alt="Product 2">
                <h2>Product 2</h2>
                <p>$20.00</p>
                <button class="add-to-cart" data-product-id="2">Add to Cart</button>
            </div>
        </section>
    </main>

    <script src="script.js"></script>
</body>
</html>
body {
    font-family: Arial, sans-serif;
}

header {
    background-color: #333;
    color: white;
    padding: 10px;
    text-align: center;
}

button {
    padding: 10px;
    font-size: 14px;
    cursor: pointer;
}

#products {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
}

.product {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

.product img {
    width: 150px;
    height: 150px;
}
let cart = [];

document.querySelectorAll('.add-to-cart').forEach(button => {
    button.addEventListener('click', (e) => {
        const productId = e.target.dataset.productId;
        cart.push(productId);

        // Update cart button text
        document.getElementById('cartBtn').innerText = `Cart (${cart.length})`;
    });
});
<img src="images/product1.jpg" alt="Product 1">
<img src="images/product2.jpg" alt="product 2">