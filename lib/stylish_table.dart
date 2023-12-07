library stylish_table;

import 'package:flutter/material.dart';

class StylishTable extends StatefulWidget {
  final List<String> titleData; // Make titleData optional
  final Map<String, Map<String, String>> tableData;
  final Color titleTextColor, firstRowColor, secondRowColor, rowTextColor, titleBackgroundColor;
  final double tableBodyHeight, tableBodyWidth, titleRowHeight, tableRowHeight;

  const StylishTable({
    Key? key,
    required this.tableData,
    required this.titleData,
    required this.titleBackgroundColor,
    this.firstRowColor = Colors.black26,
    this.secondRowColor = Colors.black38,
    this.rowTextColor = Colors.white,
    this.titleTextColor = Colors.white,
    this.tableRowHeight = 45,
    this.titleRowHeight = 45,
    this.tableBodyHeight = double.infinity,
    this.tableBodyWidth = double.infinity,
  }) : super(key: key);

  @override
  State<StylishTable> createState() => _StylishTableState();
}

class _StylishTableState extends State<StylishTable> {
  @override
  Widget build(BuildContext context) {
    //List<String> reversedKeys = widget.tableData.keys.toList().reversed.toList();
    return Container(
      height: widget.tableBodyHeight > 0
          ? widget.tableBodyHeight
          : MediaQuery.of(context).size.height,
      width: widget.tableBodyWidth > 0
          ? widget.tableBodyWidth
          : MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: widget.titleRowHeight,
              width: widget.tableBodyWidth > 0
                  ? widget.tableBodyWidth
                  : MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: widget.titleBackgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.titleData.length,
                      itemExtent: MediaQuery.of(context).size.width *
                          (1 / widget.titleData.length),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Text(
                          widget.titleData[index],
                          style: TextStyle(
                              color: widget.titleTextColor,
                              fontWeight: FontWeight.bold),
                        ));
                      }),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.tableData.length,
                  shrinkWrap: true,
                  itemBuilder: (context, indexOuter) {
                    var row = widget.tableData[
                        widget.tableData.entries.elementAt(indexOuter).key];
                    //print('${row?.length}');
                    return Container(
                      height: widget.tableRowHeight,
                      width: widget.tableBodyWidth > 0
                          ? widget.tableBodyWidth
                          : MediaQuery.of(context).size.width,
                      color: indexOuter % 2 == 0
                          ? (widget.firstRowColor != Colors.black26 ?  widget.firstRowColor : widget.titleBackgroundColor.withOpacity(0.4))
                          : (widget.secondRowColor != Colors.black38 ?  widget.secondRowColor : widget.titleBackgroundColor.withOpacity(0.6)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.titleData.length == row!.length
                                  ? widget.titleData.length
                                  : row.length,
                              itemExtent: MediaQuery.of(context).size.width *
                                  (1 / widget.titleData.length),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, indexInner) {
                                var id = row.entries;
                                //print('Hello this is row items :  ${id?.elementAt(indexInner).value}');
                                return Center(
                                    child: Text(
                                  id.elementAt(indexInner).value,
                                  style: TextStyle(
                                      color:
                                          widget.rowTextColor,
                                      fontWeight: FontWeight.bold),
                                ));
                              }),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
