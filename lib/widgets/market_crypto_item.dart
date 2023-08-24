import 'package:cryptotrack/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoMarketHeader extends StatelessWidget {
  const CryptoMarketHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textstyle =
        GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w500);
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Palates.border))),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "#",
            style: textstyle,
          ),
          const SizedBox(width: 16),
          Expanded(child: Text("Coin", style: textstyle)),
          const SizedBox(width: 16),
          Expanded(
              child: Text(
            "Price",
            textAlign: TextAlign.end,
            style: textstyle,
          )),
          const SizedBox(width: 16),
          const Text("1h"),
        ],
      ),
    );
  }
}

class CryptoMarketItem extends StatelessWidget {
  const CryptoMarketItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Palates.border))),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              "1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: Row(
              children: [
                Image.network(
                  "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
                  height: 24,
                ),
                const SizedBox(width: 4),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BitCoin",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "BTC",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 10),
                    ),
                  ],
                ),
              ],
            )),
            const SizedBox(width: 16),
            const Expanded(
                child: Text(
              "\$1111",
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            const SizedBox(width: 16),
            const Text("-0.0"),
          ],
        ),
      ),
    );
  }
}
