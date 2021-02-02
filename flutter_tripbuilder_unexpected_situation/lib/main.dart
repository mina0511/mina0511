import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Animations Demo',
    home: Animations(),
  ));
}

class Animations extends StatefulWidget {
  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  List<double> _height = [200.0, 200.0];
  List<double> _width = [133.3, 133.3];
  animateContainer(var idx) {
    setState(() {
      if (_height[idx] == 200.0) {
        _height[idx] = 250;
        _height[(idx + 1) % 2] = 150;
      } else if (_height[idx] == 250) {
        _height[idx] = 150;
        _height[(idx + 1) % 2] = 250;
      } else if (_height[idx] == 150) {
        _height[idx] = 250;
        _height[(idx + 1) % 2] = 150;
      }
      _width[idx] = _height[idx] / 1.5;
      _width[(idx + 1) % 2] = _height[(idx + 1) % 2] / 1.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Container Demo"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _animatedContainerBuilder(0,
                "https://file-download.jandi-box.com/21500362/2021/02/02/1612286122737f0935f19e6d0000baa51494b03fcab11?Expires=1612286359&Signature=RqTVeWGx1Qz9Z4rtLiw7tSerCC0oZt1XmlARxMBFg6uEp7e-PI3JMgcmhM75d-4F96kJhROj~kCQm5-a1UP0U8sY4eUiw4yTe7HZ4Su1zZZPQnjgxY~TJ71J9mSZHrvZ--g7DPz1tEKB69d3hA9osielfNnnCoMUtPsjU2ijGaCfgxRtP7hjGmEgmTDPkzRk6BenZ1g0JU3KoGSQgXoe~IInyj4S7CQRrWiqsbvvID5HvCWzYqdgJ0gfHztwzHcyvQ2u1CKOJVFD1RoGvgS1MxpaF5t2HF-tRqFKboZRc8O2BTgcKaDD~5ud-UlriteHopGc5XDfWoxiwOZ2LUQWXw__&Key-Pair-Id=APKAJ542KAGWCBA2SXPA"),
            SizedBox(width: 10),
            _animatedContainerBuilder(1,
                "https://file-download.jandi-box.com/21500362/2021/02/02/161228614818855546c753127e866933be9dee850c858?Expires=1612286359&Signature=izqltATunQ5QAk6o6hsVb9EgEqet-9NrYsbuxauUI55BpI4zStmfaDjlh~beouBWzmUJPcBW-T1QN4usQxFdcfavLBjthE8NrNkE07LbN8DypEIpn4O-gh~Tvch44J4l~J7Y58pNCdt-pfV8jGbLwln0JQyTynP6rLvybM0ILfwyhohaTlnsU6briNcr6p3ZOn72Fq0dsuMGTf-flHgt1iVQODMikrmRR0Cke6AcLL0oxq7PIua6v4QmWhPCtpmbTOFekgTIPlxw935bIBoqdANYl5qsT8n3UdQVbK735c2WAAImtwUWQF74be3gx7MaOMCqSQghLr2b8APv9OSe2Q__&Key-Pair-Id=APKAJ542KAGWCBA2SXPA"),
          ],
        ),
      ),
    );
  }

  GestureDetector _animatedContainerBuilder(int i, String _url) {
    return GestureDetector(
      onTap: () {
        animateContainer(i);
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(_url),
          ),
        ),
        height: _height[i],
        width: _width[i],
        curve: Curves.ease,
      ),
    );
  }
}
