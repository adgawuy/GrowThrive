<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Mini Shopping Site</title>
  <style>
    * { box-sizing: border-box; }
    body { font-family: Arial, sans-serif; margin: 0; background: #f9f9f9; }
    header { background: #222; color: white; padding: 1rem; display: flex; justify-content: space-between; align-items: center; }
    nav {
      background: #333;
      padding: 0.5rem 1rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    nav a {
      color: white;
      text-decoration: none;
      font-weight: bold;
      margin-right: 1rem;
      font-size: 16px;
    }
    nav a:hover {
      text-decoration: underline;
    }
    .search-box input[type="text"] {
      padding: 5px 8px;
      font-size: 14px;
      border-radius: 3px;
      border: none;
      width: 200px;
    }
    .welcome-message {
      padding: 1rem;
      font-size: 1.2rem;
      text-align: center;
      color: #333;
      background: white;
      box-shadow: 0 1px 3px rgba(0,0,0,0.1);
      margin-bottom: 1rem;
    }
    .products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 1rem;
      padding: 0 1rem 1rem;
      max-width: 1000px;  /* limit width */
      margin: 0 auto;     /* center horizontally */
    }
    .product {
      background: white;
      padding: 1rem;
      border-radius: 10px;
      box-shadow: 0 0 5px rgba(0,0,0,0.1);
      text-align: center;
    }
    .product img {
      max-width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 5px;
    }
    .product h3 {
      margin: 0.5rem 0;
    }
    .buy-button {
      display: inline-flex;
      align-items: center;
      margin-top: 0.5rem;
      font-size: 14px;
      text-decoration: none;
      background-color: #f0c14b;
      border: 1px solid #a88734;
      padding: 6px 10px;
      color: #111;
      border-radius: 3px;
      font-weight: bold;
      gap: 6px;
    }
    .buy-button img {
      height: 20px;
      width: auto;
      vertical-align: middle;
      display: block;
    }
  </style>
</head>
<body>

<header>
  <h2>ShopEasy</h2>
</header>

<nav>
  <div class="nav-links">
    <a href="#">Home</a>
    <a href="#">Search</a>
  </div>
  <div class="search-box">
    <input type="text" placeholder="Search products..." aria-label="Search products"/>
  </div>
</nav>

<div class="welcome-message">
  Welcome to our store!
</div>

<div class="products" id="product-list">
  <!-- Products will be injected here -->
</div>

<script>
  const products = [
    { 
      id: 1, 
      name: "Ninja Food Chopper", 
      image: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMJJDOjCkXxpBuXUqtcEmnuoy_7E5CQucARXUc1SFvQB5UztF5yofI8vF6c0Lv1zESEAEkQPWWK3jCmAINgQMRxv0jLfDPJADeEOmhvzi9Je-EWMy0gNOWU4oetTqGhaMhTidGrpdb9zoMkP6d3Az51tcHvA5jmPkRlFK2_hm7oKOMJFIH8WbVXPuqSm4/s1000/51FwbHQaUUL._AC_SX679_.jpg", 
      amazon: "https://www.amazon.com/Ninja-200-Watt-16-Ounce-Chopping-NJ110GR/dp/B00HL3TBDQ?crid=2OS1603NW4FS6&dib=eyJ2IjoiMSJ9.7_YxEWmbS4yuCUkkFn_jSm2mVoiGOVwtFAFP6AdE3fuFv2Um0uMuyO3AruHim75J0cpfOsqvg7vCbKrcsu2kg9bYBhbfQ0bhCQF7TpsrYxcCISOLSbvp7twuNwI1sj8eRQb5hgkp-zQZGEYAyUmsXXeZOdOPxerodNSAOncAnGwgvOFDsfvLalqrHHnGryo4OXQbMZR4Lri7AcWoMkW11it_4ZuRVARRJNYYs0BVnwY.GNPgKDbmPGV4jmOW2d2j9VoAQZUmeosST3PZc9GZKoA&dib_tag=se&keywords=ninja+professional+stackable+chopper&qid=1754403420&sprefix=ninja+professional+sta%2Caps%2C310&sr=8-3&linkCode=ll1&tag=growthrive02-20&linkId=3505d60e2dcd4a2c460694de48075a9d&language=en_US&ref_=as_li_ss_tl"
    },
    { id: 2, name: "Jeans", image: "https://via.placeholder.com/200x150?text=Jeans", amazon: "https://www.amazon.com/dp/B000000002" },
    { id: 3, name: "Shoes", image: "https://via.placeholder.com/200x150?text=Shoes", amazon: "https://www.amazon.com/dp/B000000003" },
    { id: 4, name: "Watch", image: "https://via.placeholder.com/200x150?text=Watch", amazon: "https://www.amazon.com/dp/B000000004" },
  ];

  function displayProducts() {
    const productList = document.getElementById('product-list');
    productList.innerHTML = '';
    products.forEach(prod => {
      productList.innerHTML += `
        <div class="product">
          <a href="${prod.amazon}" target="_blank">
            <img src="${prod.image}" alt="${prod.name}">
            <h3>${prod.name}</h3>
          </a>
          <a class="buy-button" href="${prod.amazon}" target="_blank" aria-label="Buy ${prod.name} on Amazon">
            Buy it on
            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg" alt="Amazon logo">
          </a>
        </div>
      `;
    });
  }

  // Initialize
  displayProducts();
</script>

</body>
</html>
