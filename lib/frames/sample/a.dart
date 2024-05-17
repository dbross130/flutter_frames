import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

void main() {
  runApp(MaterialApp(
    home: MyDataGridWidget(),
  ));
}

class MyDataGridWidget extends StatelessWidget {
  final _productDataSource = _ProductDataSource();

  MyDataGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Invoice Register'),
      ),
      body: SfDataGrid(
        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
        source: _productDataSource,
        columns: <GridColumn>[
          GridColumn(
            columnName: 'orderId',
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerRight,
              child: const Text(
                'ID',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'customerName',
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Name',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'productId',
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerRight,
              child: const Text(
                'Product ID',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'productName',
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Product',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
        stackedHeaderRows: <StackedHeaderRow>[
          StackedHeaderRow(
            cells: [
              StackedHeaderCell(
                columnNames: ['orderId', 'customerName', 'productId', 'productName'],
                child: Container(
                  color: const Color(0xFFF1F1F1),
                  child: const Center(child: Text('Order Shipment Details')),
                ),
              ),
            ],
          ),
          StackedHeaderRow(
            cells: [
              StackedHeaderCell(
                columnNames: ['orderId', 'customerName'],
                child: Container(
                  color: const Color(0xFFF1F1F1),
                  child: const Center(child: Text('Customer Details')),
                ),
              ),
              StackedHeaderCell(
                columnNames: ['productId', 'productName'],
                child: Container(
                  color: const Color(0xFFF1F1F1),
                  child: const Center(child: Text('Product Details')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProductDataSource extends DataGridSource {
  List<Product> product = [
    Product(
        orderId: 1,
        customerName: 'John Doe',
        productId: 101,
        productName: 'Product A'),
    Product(
        orderId: 2,
        customerName: 'Jane Smith',
        productId: 102,
        productName: 'Product B'),
  ];

  @override
  List<DataGridRow> get rows => product
      .map<DataGridRow>((product) => DataGridRow(cells: [
            DataGridCell<int>(columnName: 'orderId', value: product.orderId),
            DataGridCell<String>(columnName: 'customerName', value: product.customerName),
            DataGridCell<int>(columnName: 'productId', value: product.productId),
            DataGridCell<String>(columnName: 'productName', value: product.productName),
          ]))
      .toList();

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment: dataGridCell.columnName == 'orderId' || dataGridCell.columnName == 'productId'
            ? Alignment.centerRight
            : Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          dataGridCell.value.toString(),
          overflow: TextOverflow.ellipsis,
        ),
      );
    }).toList());
  }
}

class Product {
  final int orderId;
  final String customerName;
  final int productId;
  final String productName;

  Product(
      {required this.orderId,
      required this.customerName,
      required this.productId,
      required this.productName});
}