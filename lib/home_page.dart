// // lib/home_page.dart
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('E-Commerce Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.pushNamed(context, '/cart');
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Navigation',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/home');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.person),
//               title: const Text('Bio'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/bio');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.build),
//               title: const Text('Services'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/services');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.login),
//               title: const Text('Login'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/login');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.app_registration),
//               title: const Text('Register'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/register');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.contact_mail),
//               title: const Text('Contact'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/contact');
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text('Logout'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/logout');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // 2 products per row
//           crossAxisSpacing: 8.0, // Horizontal spacing between items
//           mainAxisSpacing: 8.0, // Vertical spacing between items
//           childAspectRatio: 0.75, // Aspect ratio of each item (width/height)
//         ),
//         padding: const EdgeInsets.all(8.0),
//         itemCount: _products.length,
//         itemBuilder: (context, index) {
//           final product = _products[index];
//           return _buildProductItem(
//             context,
//             product['imagePath']!,
//             product['title']!,
//             product['price']!,
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildProductItem(
//       BuildContext context, String imagePath, String title, String price) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 200, // Adjust height to fit your design
//             width: double.infinity,
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.contain, // Ensure image is fully visible
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               price,
//               style: const TextStyle(fontSize: 14, color: Colors.green),
//             ),
//           ),
//           ButtonBar(
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/checkout');
//                 },
//                 child: const Text('Add to Cart'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Sample product data
//   final List<Map<String, String>> _products = [
//     {
//       'imagePath': 'assets/images/asus_notebook_computer.jpg',
//       'title': 'Asus Notebook Computer',
//       'price': '\$999'
//     },
//     {
//       'imagePath': 'assets/images/a54.jpg',
//       'title': 'Smartphone A54',
//       'price': '\$499'
//     },
//     {
//       'imagePath': 'assets/images/band.jpg',
//       'title': 'Fitness Band',
//       'price': '\$79'
//     },
//     {
//       'imagePath': 'assets/images/buds.png',
//       'title': 'Wireless Earbuds',
//       'price': '\$129'
//     },
//     {
//       'imagePath': 'assets/images/mkb.jpg',
//       'title': 'Laptop MKB',
//       'price': '\$899'
//     },
//     {
//       'imagePath': 'assets/images/s7.jpg',
//       'title': 'Samsung Galaxy S7',
//       'price': '\$699'
//     },
//     {
//       'imagePath': 'assets/images/mkb1.jpg',
//       'title': 'Laptop MKB 1',
//       'price': '\$949'
//     },
//     {
//       'imagePath': 'assets/images/mkb2.jpg',
//       'title': 'Laptop MKB 2',
//       'price': '\$999'
//     },
//     {
//       'imagePath': 'assets/images/s7 b.jpg',
//       'title': 'Samsung Galaxy S7 B',
//       'price': '\$649'
//     },
//     {
//       'imagePath': 'assets/images/S7 G.jpg',
//       'title': 'Samsung Galaxy S7 G',
//       'price': '\$699'
//     },
//     {
//       'imagePath': 'assets/images/s7 G.jpg',
//       'title': 'Samsung Galaxy S7 G (Alternate)',
//       'price': '\$679'
//     },
//     {
//       'imagePath': 'assets/images/S7 R.jpg',
//       'title': 'Samsung Galaxy S7 R',
//       'price': '\$699'
//     },
//     {
//       'imagePath': 'assets/images/s8 1.jpg',
//       'title': 'Samsung Galaxy S8 1',
//       'price': '\$799'
//     },
//     {
//       'imagePath': 'assets/images/s8.jpg',
//       'title': 'Samsung Galaxy S8',
//       'price': '\$849'
//     },
//     {
//       'imagePath': 'assets/images/samsung-galaxy-a04e-3gb-64gb v.jpg',
//       'title': 'Samsung Galaxy A04E 3GB/64GB (Variant)',
//       'price': '\$399'
//     },
//     {
//       'imagePath': 'assets/images/samsung-galaxy-a04e-3gb-64gb.jpg',
//       'title': 'Samsung Galaxy A04E 3GB/64GB',
//       'price': '\$379'
//     },
//   ];
// }

// lib/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To Shopex'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Bio'),
              onTap: () {
                Navigator.pushNamed(context, '/bio');
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text('Services'),
              onTap: () {
                Navigator.pushNamed(context, '/services');
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration),
              title: const Text('Register'),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/logout');
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 products per row
          crossAxisSpacing: 8.0, // Horizontal spacing between items
          mainAxisSpacing: 8.0, // Vertical spacing between items
          childAspectRatio: 0.75, // Aspect ratio of each item (width/height)
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return _buildProductItem(
            context,
            product['imagePath']!,
            product['title']!,
            product['price']!,
          );
        },
      ),
    );
  }

  Widget _buildProductItem(
      BuildContext context, String imagePath, String title, String price) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300, // Adjust height to fit your design
            width: double.infinity,
            child: Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // Ensure image is fully visible
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.green),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Sample product data
  final List<Map<String, String>> _products = [
    {
      'imagePath': 'assets/images/asus_notebook_computer.jpg',
      'title': 'Asus Notebook Computer',
      'price': '\$999'
    },
    {
      'imagePath': 'assets/images/a54.jpg',
      'title': 'Smartphone A54',
      'price': '\$499'
    },
    {
      'imagePath': 'assets/images/band.jpg',
      'title': 'Fitness Band',
      'price': '\$79'
    },
    {
      'imagePath': 'assets/images/buds.png',
      'title': 'Wireless Earbuds',
      'price': '\$129'
    },
    {
      'imagePath': 'assets/images/mkb.jpg',
      'title': 'Laptop MKB',
      'price': '\$899'
    },
    {
      'imagePath': 'assets/images/s7.jpg',
      'title': 'Samsung Galaxy S7',
      'price': '\$699'
    },
    {
      'imagePath': 'assets/images/mkb1.jpg',
      'title': 'Laptop MKB 1',
      'price': '\$949'
    },
    {
      'imagePath': 'assets/images/mkb2.jpg',
      'title': 'Laptop MKB 2',
      'price': '\$999'
    },
    {
      'imagePath': 'assets/images/s7 b.jpg',
      'title': 'Samsung Galaxy S7 B',
      'price': '\$649'
    },
    {
      'imagePath': 'assets/images/S7 G.jpg',
      'title': 'Samsung Galaxy S7 G',
      'price': '\$699'
    },
    {
      'imagePath': 'assets/images/s7 G.jpg',
      'title': 'Samsung Galaxy S7 G (Alternate)',
      'price': '\$679'
    },
    {
      'imagePath': 'assets/images/S7 R.jpg',
      'title': 'Samsung Galaxy S7 R',
      'price': '\$699'
    },
    {
      'imagePath': 'assets/images/s8 1.jpg',
      'title': 'Samsung Galaxy S8 1',
      'price': '\$799'
    },
    {
      'imagePath': 'assets/images/s8.jpg',
      'title': 'Samsung Galaxy S8',
      'price': '\$849'
    },
    {
      'imagePath': 'assets/images/samsung-galaxy-a04e-3gb-64gb v.jpg',
      'title': 'Samsung Galaxy A04E 3GB/64GB (Variant)',
      'price': '\$399'
    },
    {
      'imagePath': 'assets/images/samsung-galaxy-a04e-3gb-64gb.jpg',
      'title': 'Samsung Galaxy A04E 3GB/64GB',
      'price': '\$379'
    },
  ];
}
