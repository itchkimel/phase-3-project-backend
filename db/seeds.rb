puts "Deleting seeds! 🗑"
Cart.destroy_all
Guitar.destroy_all
Customer.destroy_all

puts "Creating seeds! 🌸"
Guitar.create([
  {
    brand: "Gibson",
    price: 1999, 
    material: "Mahogany", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-70083df5f09a62fc__hmac-1c3c81b612c89d179ebe0be8d65d22d93d1d5e89/images/closeup/750-LPCLSEBNH_front.jpg.auto.webp",
    model: "Les Paul",
  },
  {
    brand: "Gibson",
    price: 1199, 
    material: "Mahogany", 
    color: "Brown", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-55a8d08bb620d02e__hmac-21b8d5892cdf1ca5bbf25daa929aacc9b00184bd/images/closeup/750-LPTRWONH_front.jpg.auto.webp",
    model: "Les Paul",
  },
  {
    brand: "Gibson",
    price: 1599, 
    material: "Mahogany", 
    color: "Yellow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-1a8a1f6baa8d382a__hmac-5e2dd75430b53e10c4e701fef900abbfefa37fc7/images/closeup/750-LPSPTVNH_front.jpg.auto.webp",
    model: "Les Paul",
  },      
  {
    brand: "Gibson",
    price: 1799, 
    material: "Mahogany", 
    color: "Red", 
    left_handed: true, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-4f28a983b5c408cb__hmac-f3e0fe1e031bbfe8958b0f26506f5eaab6fb37aa/images/closeup/750-SG61VENHL_front.jpg.auto.webp",
    model: "SG Standard",
  }, 
  { 
    brand: "Gibson",
    price: 1499, 
    material: "Mahogany", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-d86c5bca1010377c__hmac-c1f0ae4da103b71f82d89371ca7a6ec84dbc14f3/images/closeup/750-SGSTEBCH_front.jpg.auto.webp",
    model: "SG Standard",
  },
  {
    brand: "Fender",
    price: 749, 
    material: "Alder", 
    color: "White", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-85__ha-083bbf50138ec35d__hmac-e1d42085e844e60ea82e147a99d3d34bc00d904e/store/enhanced/items/StratPMPWT/3bc3a1-StratPMPWT_front.jpg.auto.webp",
    model: "Stratocaster",
  },      
  {
    brand: "Fender",
    price: 1499, 
    material: "Alder", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-c70c12cadbd8e5a6__hmac-f20b7ada50f4f188e4e4fbe1c543a6aa82ce3226/images/guitars/StratAP2MBk/US210027698/US210027698-front-large.jpg.auto.webp",
    model: "Stratocaster",
  },
  {    
    brand: "Jackson",
    price: 299, 
    material: "Poplar", 
    color: "White", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-2266f7a8cc90ca03__hmac-60c45f99cf18e8f8d7383a1ae2bc1c0da2194d23/images/guitars/JS32KEASW/CWJ2106055/CWJ2106055-front-large.jpg.auto.webp",
    model: "Kelly",
  },
  {     
    brand: "Jackson",
    price: 1399, 
    material: "Basswood", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-aa16652ca946a3d8__hmac-71f677e3ba9b405e3ab8981416e91e07b3ce1a86/images/closeup/750-PJLKBKA_front.jpg.auto.webp",
    model: "Kelly",
  },
  {  
    brand: "Jackson",
    price: 299, 
    material: "Poplar", 
    color: "Blue", 
    left_handed: true, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-a150a6639e5af217__hmac-7feb8ad3bb1a6279ed45d3fcd4efab803bcb502a/images/closeup/750-JS32LABl_front.jpg.auto.webp",
    model: "Dinky",
  }, 
  {     
    brand: "Jackson",
    price: 3899, 
    material: "Mahogany", 
    color: "Red", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-24aa03c0f7472af6__hmac-20870503dea36c05ae32d05762ad4ebb45330bd2/images/closeup/750-SL6CBTR_front.jpg.auto.webp",
    model: "Soloist",
  },
  {
    brand: "Ibanez",
    price: 2999, 
    material: "Mahogany", 
    color: "Brown", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-d9a2a634101e2949__hmac-c4f9ca8ca852172133bc50ae90cc3746564e7fdd/images/closeup/750-JSM100VT_front.jpg.auto.webp",
    model: "Semi-Hollowbody",
  },   
  { 
    brand: "Ibanez",
    price: 999, 
    material: "Basswood", 
    color: "Yelow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-b021c22285d6f451__hmac-3472ee4929a49cdd3e5a4f21ab7c6d9c6c29f803/images/closeup/750-RG550DY_front.jpg.auto.webp",
    model: "Genesis",
  }, 
  { 
    brand: "Ibanez",
    price: 149, 
    material: "Basswood", 
    color: "Red", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-362f5853fc68a316__hmac-0e056483ccc4933c53ec75b096052f60c1218c4e/images/closeup/750-GRGM21MORB_front.jpg.auto.webp",
    model: "Gio",
  },      
  {
    brand: "Ibanez",
    price: 549, 
    material: "Mahogany", 
    color: "White", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-f32b86b33c9f4b4d__hmac-c848ea0fef8151ec77cc3c7f912d63373092f89e/images/closeup/750-JEMJRLWH_front.jpg.auto.webp",
    model: "Steve Vai",
  },       
  {
    brand: "Rickenbacker",
    price: 2999, 
    material: "Maple", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-66f586f866907ff7__hmac-a3ef261a709e3eeac87370734ba895d4404d2a83/images/guitars/325C64/2112678/2112678-front-large.jpg.auto.webp",
    model: "Semi-Hollow",
  },     
  {    
    brand: "Rickenbacker",
    price: 2799, 
    material: "Maple", 
    color: "Brown", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-7cd0600a7599fd83__hmac-1bb175b144ea70bb25bae6afa7855d8e26292f73/images/closeup/750-360DLXMG_front.jpg.auto.webp",
    model: "Thinline",
  },      
  {  
    brand: "Danelectro",
    price: 479, 
    material: "Hardboard", 
    color: "Black", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-8a41b67d9deccce2__hmac-8ea0be041a173a1e73d29d27d601222ef0e226b3/images/guitars/59MNOSBK/087375/087375-front-large.jpg.auto.webp",
    model: "The '59M NOS", 
  },  
  {
    brand: "Danelectro",
    price: 429, 
    material: "Alder", 
    color: "Yellow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-b0faa24c7c2bb0b9__hmac-22c716b6b441776b4315eb48c836c8d60731acbb/images/guitars/STK59C/083612/083612-front-large.jpg.auto.webp",
    model: "Stock'59",
  },     
  {  
    brand: "Danelectro",
    price: 899, 
    material: "Alder", 
    color: "Blue", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-daee5d4c660459ae__hmac-d3db0f2be3a2237427aabb814f1880b9ebf35554/images/closeup/750-64DA_front.jpg.auto.webp",
    model: "The '64",
  },   
  {
    brand: "Danelectro",
    price: 529, 
    material: "Alder", 
    color: "Yellow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-5ff4591a2678e694__hmac-53a23684bc75035a1cdfd39e3bb268db31a80f09/images/closeup/750-67DANOY_front.jpg.auto.webp",
    model: "The '67",
  },
  {
    brand: "Danelectro",
    price: 499, 
    material: "Hardboard", 
    color: "Brown", 
    left_handed: true, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-c0293538cef4ed3b__hmac-9cefa3b7a38312092efc6ed1d3b19246db221b2a/images/closeup/750-59OGC_front.jpg.auto.webp",
    model: "The '59",
  },     
  {  
    brand: "Gretsch",
    price: 2599, 
    material: "Mahogony", 
    color: "Yellow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-7be85ee6c189a22e__hmac-213abe0e0258877fb2f0d9cf13ff72bcb0bb87ea/images/guitars/G6128TVSGS/JT21010293/JT21010293-front-large.jpg.auto.webp",
    model: "Vintage Select '89", 
  },
  {
    brand: "Gretsch",
    price: 649, 
    material: "Mahogony", 
    color: "Red", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-286b7f3d6d09b479__hmac-226c8c8162836c8d57319b929f009ab75dc72a5e/images/guitars/G5232TDJFTTR/CYG20103825/CYG20103825-front-large.jpg.auto.webp",
    model: "Electromatic Double Jet",
  },
  {        
    brand: "Gretsch",
    price: 2999, 
    material: "Mahogony", 
    color: "Red", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-d49e440df56c2e50__hmac-00e06841f3535c9ab513423796148ca9dae1adee/images/closeup/750-ThunderbirdBG_front.jpg.auto.webp",
    model: "Jupiter Thunderbird",
  },   
  {  
    brand: "Charvel",
    price: 999, 
    material: "Alder", 
    color: "Blue", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-4660ed6795e95b5f__hmac-8de5da8da9be6ece0433d341f64361a141cc3a77/images/closeup/750-PMSCS1HSHFREB_front.jpg.auto.webp",
    model: "Pro-Mod So-Cal Style",
  },  
  {    
    brand: "Charvel",
    price: 3299, 
    material: "Ash", 
    color: "Brown", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-99435852ef5100f2__hmac-07e46b6190eb7cb09bb7beff4db3abe9a6fb5995/images/closeup/750-GGHSHCAN_front.jpg.auto.webp",
    model: "Guthrie Govan Signature HSH",
  },     
  {
    brand: "Charvel",
    price: 1649, 
    material: "Basswood", 
    color: "Blue", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-16c9cc59e817ebf8__hmac-c96f1674619b8b3a1afe4e8f8c249b1315c28511/images/guitars/PMDK247AVNSG/KWC2000552/KWC2000552-front-large.jpg.auto.webp",
    model: "NOVA",
  },  
  {  
    brand: "Charvel",
    price: 949, 
    material: "Alder", 
    color: "Yellow", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-bef2b5a024b9e401__hmac-14f3cf290e42c9f9458d458baf9679e9fa2d00ef/images/closeup/750-PMSC1FVW_front.jpg.auto.webp",
    model: "Pro-Mod So-Cal Style 1 HH",
  },  
  { 
    brand: "Charvel",
    price: 899, 
    material: "Alder", 
    color: "White", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-b1be3a8f29a07478__hmac-6fa375cdc4ea7b0919f7f5818afbdb37f92ecadf/images/closeup/750-SDimHHFRSW_front.jpg.auto.webp",
    model: "Pro-Mod San Dimas Style 1 HH",
  },
  {
    brand: "ESP",
    price: 1299, 
    material: "Mahogany", 
    color: "White", 
    left_handed: false, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-4ef590734c0ba91c__hmac-8700f82216506e297c0a195a2eaea02830c4a1af/images/closeup/750-SNAKEBYTESW_front.jpg.auto.webp",
    model: "Snakebyte",
  },     
  {  
    brand: "ESP",
    price: 999, 
    material: "Mahogony", 
    color: "Red", 
    left_handed: true, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-27d1e7d153bc5a86__hmac-cae76e22a2f3caaa6b50a0f4870750725e817cb7/images/closeup/750-LEC1000STBCL_front.jpg.auto.webp",
    model: "LTD EC-1000",
  },            
  {  
    brand: "ESP",
    price: 499, 
    material: "Mahogony", 
    color: "Blue", 
    left_handed: true, 
    image: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-9f3d38a50a18d1d9__hmac-09e5504f2c2a1e18249e092a9dc15091491a1fff/images/closeup/750-LEC256CBLH_front.jpg.auto.webp",
    model: "LTD EC-256FM",
  }
])     
puts "Created Guitars! 🎸🎸🎸"  

10.times do
  Customer.create(name: Faker::Name.name, email: Faker::Internet.email)
end
puts "Created Customers! 🧍🧍"

5.times do
  Order.create(guitar_id: Guitar.ids.sample, customer_id: Customer.ids.sample)
end  

puts "Created Carts! 🛒 🛒"

puts "Done creating seeds ✅"