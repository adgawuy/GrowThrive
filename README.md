<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>GrowThrive Products</title>
  <style>
    body {
      font-family: 'Segoe UI', system-ui, sans-serif;
      max-width: 900px;
      margin: 0 auto;
      padding: 30px;
      transition: all 0.3s ease;
    }

    h1 {
      padding-bottom: 12px;
      margin-bottom: 25px;
      transition: all 0.3s ease;
    }

    .product-list {
      list-style-type: none;
      padding: 0;
      display: grid;
      gap: 20px;
    }

    .product-item {
      margin: 0;
      padding: 20px;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      display: flex;
      align-items: center;
      gap: 20px;
    }

    .product-image {
      flex-shrink: 0;
      border-radius: 6px;
      overflow: hidden;
      width: 120px;
      height: 90px;
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: #15273a;
      transition: all 0.3s ease;
    }

    .product-image img {
      max-width: 100%;
      max-height: 100%;
      object-fit: contain;
    }

    .product-content {
      flex-grow: 1;
    }

    .product-content h3 {
      margin-top: 0;
      margin-bottom: 8px;
    }

    .product-content p {
      margin: 0;
      line-height: 1.5;
    }

    .theme-switcher {
      position: fixed;
      top: 20px;
      right: 20px;
      padding: 8px 16px;
      border: none;
      border-radius: 20px;
      cursor: pointer;
      font-weight: bold;
      box-shadow: 0 2px 5px rgba(243, 240, 240, 0.973);
      z-index: 100;
    }

    /* Blue Theme */
    .theme-blue {
      background-color: #1e3f57;
    }
    .theme-blue h1 {
      color: #0369a1;
      border-bottom: 2px solid #bae6fd;
    }
    .theme-blue .product-item {
      background-color: rgb(105, 146, 180);
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
      border-left: 4px solid #3b82f6;
    }
    .theme-blue .product-item:hover {
      transform: translateY(-3px);
      box-shadow: 0 10px 15px -3px rgb(252, 248, 248);
      border-left-width: 6px;
    }
    .theme-blue .product-image {
      border: 1px solid #e0f2fe;
    }
    .theme-blue .theme-switcher {
      background-color: #3b82f6;
      color: white;
    }

    /* Gradient Theme */
    .theme-gradient {
      background-color: #f9fafb;
    }
    .theme-gradient h1 {
      color: #111827;
      position: relative;
    }
    .theme-gradient h1:after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 60px;
      height: 4px;
      background: linear-gradient(90deg, #ec4899, #8b5cf6);
      border-radius: 2px;
    }
    .theme-gradient .product-item {
      background: linear-gradient(90deg, white 85%, #f0fdf4 100%);
      position: relative;
      overflow: hidden;
      box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    }
    .theme-gradient .product-item:hover {
      background: linear-gradient(90deg, white 80%, #ecfdf5 100%);
    }
    .theme-gradient .product-item:before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      height: 100%;
      width: 4px;
      background: linear-gradient(to bottom, #8b5cf6, #ec4899);
    }
    .theme-gradient .product-image {
      border: 1px solid #f3e8ff;
    }
    .theme-gradient .theme-switcher {
      background: linear-gradient(90deg, #ec4899, #8b5cf6);
      color: white;
    }

    /* Dark Theme */
    .theme-dark {
      background-color: #0f172a;
      color: #e2e8f0;
    }
    .theme-dark h1 {
      color: #7dd3fc;
      border-bottom: 1px solid #334155;
    }
    .theme-dark .product-item {
      background-color: #1e293b;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
      border-left: 4px solid #7dd3fc;
    }
    .theme-dark .product-item:hover {
      background-color: #334155;
      transform: translateY(-2px);
    }
    .theme-dark .product-image {
      background-color: #1e293b;
      border: 1px solid #334155;
      opacity: 0.9;
    }
    .theme-dark .theme-switcher {
      background-color: #7dd3fc;
      color: #0f172a;
    }
  </style>
</head>
<body class="theme-blue">

  <h1>GrowThrive Products</h1>
  <ul class="product-list">
    <!-- Product 1 -->
    <a href="https://amzn.to/4lPOHbo" target="_blank" style="text-decoration: none; color: inherit;">
      <li class="product-item">
        <div class="product-image">
          <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEglbBi3zUQXmPZ3sK-dFiNeNby2at-jVjLlq4aMZ_QXJ_TXUmPu1h6_kA9doLl2oyegUNVxlOwyWLcCzrU5z6p2HBz4-bGl2vkGeAiko_7Fyrj5MHvGHPpoy4i7E6AZmQvQ-_xITgFSAVRFPojlaw4R-QxQ3mEXReVN5ITr00aOpd11DmzKqIwv7JIv74Y/s757/81VVi3Ay6ML._AC_SX679_.jpg" alt="Plant Nutrients" />
        </div>
        <div class="product-content">
          <h3>Premium Plant Nutrients</h3>
          <p>Our specially formulated nutrients help plants grow faster and stronger with essential minerals and organic compounds for optimal health.</p>
        </div>
      </li>
    </a>

    <!-- Product 2 -->
    <a href="https://amzn.to/3UFIS4l" target="_blank" style="text-decoration: none; color: inherit;">
      <li class="product-item">
        <div class="product-image">
          <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgQ_DV3UsTKQaKYNfm05aFZoAz8o4CMnWdjfTVvqMFAGQ9sNDES_W6S__xmWY-koWQPbLcpm0UlLavLan3Jj9pIsx8HPf2cRuO7om-RiXzlPVZDg7hSlYPCyIUqdJK9GWT72jwN9qwWq8728JVxlUfhw6_sl6iuCDoQcNiVNtDAdk7-W-6CNk-H1TQTw3U/w136-h148/Sk%C3%A4rmbild%202025-07-30%20111046.png" alt="Organic Soil" />
        </div>
        <div class="product-content">
          <h3>Rosemary oil </h3>
          <p>Mielle Natural Organics Rosemary Mint Scalp & Hair Strengthening Oil Strengthening Oil for Scalp and Hair with Mint and Rosemary, 60ml, Pack of 1, Sealed Pack</p>
        </div>
      </li>
    </a>

    <!-- Product 3 (Updated Link) -->
    <a href="https://amzn.to/478lS5p" target="_blank" style="text-decoration: none; color: inherit;">
      <li class="product-item">
        <div class="product-image" style="text-align: center;">
          <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNnS-J9VwJ4StDrgeIa08ryjTFaH__SW9kFpdj9xnptkYa1snchNrSSDeoNoILWGMxpC7FPs3QcjTUyBd4rYzvD3SUJdm6Ot9FVHSlIFlKWfAng6ubW4AkthCXqcggU_XK2hqxHphEvX_PbiGaoUGc2jEH6kF1pYoJxkb-64ZvOZmSf_QrBzw9UoP5Axo/w70-h97/51dOUMHB58L._AC_.jpg" width="70" height="97" alt="Smart Watering System" />
        </div>
        <div class="product-content">
          <h3>Smart Watering System</h3>
          <p>Automated watering solution with moisture sensors for consistent plant care, programmable schedules, and remote control via app.</p>
        </div>
      </li>
    </a>
  </ul>
</body>
</html>
