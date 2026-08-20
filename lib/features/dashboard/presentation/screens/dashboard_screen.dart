import 'package:flutter/material.dart';
import '../../../history/presentation/screens/history_screen.dart';
import '../../../settings/presentation/screens/settings_screen.dart';
import '../widgets/level_badge.dart';
import '../../../mock_data/presentation/widgets/mock_data_panel.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const currentLevel = 0; // will come from Firebase later

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flood Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Current Status',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const LevelBadge(level: currentLevel),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                title: const Text('Live Data'),
                subtitle: const Text('Rain: --, Flood: --, Distance: --'),
                trailing: Icon(Icons.wifi, color: Colors.green.shade600),
              ),
            ),
            const SizedBox(height: 16),
            const MockDataPanel(),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.show_chart),
                    label: const Text('History'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const HistoryScreen()),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.settings),
                    label: const Text('Settings'),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SettingsScreen()),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}