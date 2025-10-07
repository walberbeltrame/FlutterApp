appBar: AppBar( ...
     ),
     drawer: Drawer(
       child: SafeArea(
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               decoration: BoxDecoration(
                 color: Theme.of(context).colorScheme.primaryContainer,
               ),
               child: Align(
                 alignment: Alignment.bottomLeft,
                 child: Text(
                   'Menu',
                   style: Theme.of(context).textTheme.headlineSmall,
                 ),
               ),
             ),
             ListTile(
               leading: const Icon(Icons.pages),
               title: const Text('Componentes'),
               onTap: () {
                 Navigator.pop(context); // fecha o drawer
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (_) => const ComponentsPage()),
                 );
               },
             ),
           ],
         ),
       ),
     ),
