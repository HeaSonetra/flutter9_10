import 'package:flutter/material.dart';
import 'package:login_signup/view/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[600]),
              accountName: Text("Sophal Phalim"),
              accountEmail: Text("heasonetra123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/phalim.png"),
              ),
            ),
            _buildDrawerItem(context,Icons.home, "Home"),
            _buildDrawerItem(context,Icons.favorite_border, "Favourites"),
            _buildDrawerItem(context,Icons.account_tree_outlined, "Workflow"),
            _buildDrawerItem(context,Icons.update, "Updates"),
            Divider(),
            _buildDrawerItem(context,Icons.extension, "Plugins"),
            _buildDrawerItem(context,Icons.notifications_none, "Notifications"),
            _buildDrawerItem(context,Icons.logout, "Logout"),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context,IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginView()));
      },
    );
  }
}
