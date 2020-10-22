import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  alipay, user, setup
}

/**
 * A class includes all icons which you provided from https://iconfont.cn
 *
 * How to use it:
 * ```dart
 * IconFont(IconNames.xxx);
 * IconFont(IconNames.xxx, color: '#f00');
 * IconFont(IconNames.xxx, colors: ['#f00', 'blue']);
 * IconFont(IconNames.xxx, size: 30, color: '#000');
 * ```
 *
 * The name is dynamic to against server interface.
 * Feel free to input string literal.
 * ```dart
 * IconFont('xxx');
 * ```
 */
class IconFont extends StatelessWidget {
  IconNames name;
  final String color;
  final List<String> colors;
  final double size;

  IconFont(dynamic iconName, { this.size = 14, this.color, this.colors }) {
    switch (iconName) {
      case 'alipay':
        iconName = IconNames.alipay;
        break;
      case 'user':
        iconName = IconNames.user;
        break;
      case 'setup':
        iconName = IconNames.setup;
        break;

    }

    this.name = iconName;
  }

  static String getColor(int arrayIndex, String color, List<String> colors, String defaultColor) {
    if (color != null && color.isNotEmpty) {
      return color;
    }

    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }

    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (this.name) {
      case IconNames.alipay:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M192 692.736c0-69.632 51.2-106.496 88.064-111.104 111.104-18.432 264.192 74.24 264.192 74.24-69.632 88.064-166.912 134.144-241.152 134.144-65.024-4.608-111.104-41.472-111.104-97.28z"
              fill="''' + getColor(0, color, colors, '#5B8BD4') + '''"
            />
            <path
              d="M979.456 729.6c-13.824-4.608-329.216-101.888-319.488-111.104 46.592-55.808 78.848-185.344 78.848-185.344v-27.648h-185.344V335.872h226.816v-41.472h-226.816V192.512H460.8v97.28H257.024v41.472H460.8v69.632H298.496v27.648h333.824c0 13.824-23.04 106.496-46.08 148.48-4.608-9.216-153.088-60.416-236.544-65.024-88.064 4.608-157.696 32.256-189.952 97.28-46.592 120.32 27.648 241.152 194.56 241.152 27.648 0 162.304-13.824 264.192-153.088 27.648 13.824 185.344 92.672 282.624 143.872-92.672 111.104-231.936 180.736-389.12 180.736-280.576 1.024-508.928-226.304-509.44-506.88v-3.072C1.024 231.424 227.84 3.072 508.928 2.56h3.072c280.576-1.024 508.928 226.304 509.44 506.88v3.072c4.608 82.944-13.824 152.576-41.984 217.088z"
              fill="''' + getColor(1, color, colors, '#5B8BD4') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.user:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M518.07603918 6.737455c-174.95658274 0-316.73174462 141.77516188-316.73174465 316.73174464 0 82.95355218 32.42729765 159.11999552 84.46179858 214.92511241 16.59071043 18.09895683 35.44379047 33.93554407 55.80511691 47.5097617 50.5262545 33.93554407 111.61023382 53.54274731 176.46482916 53.5427473s126.69269785-19.60720323 176.46482915-53.5427473c20.36132644-13.57421762 39.21440646-29.41080486 55.80511691-47.5097617C803.13460934 482.58919514 834.80778381 406.42275179 834.80778381 323.46919964c0-174.95658274-141.77516188-316.73174462-316.73174463-316.73174464z m166.66122752 501.491929c-22.62369604 20.36132644-49.01800811 36.95203687-77.67468975 47.50976169-27.90255844 10.55772482-58.06748652 16.59071043-88.98653777 16.59071044s-61.83810252-6.03298562-88.98653779-16.59071044c-28.65668166-11.31184801-55.0509937-27.14843525-77.67468975-47.50976169C300.88855716 462.98199189 269.21538268 396.61915017 269.21538268 323.46919964c0-137.25042267 111.61023382-248.86065649 248.8606565-248.86065651s248.86065649 111.61023382 248.86065648 248.86065651c0 73.14995053-31.67317446 139.51279228-82.19942896 184.76018436z"
              fill="''' + getColor(0, color, colors, '#263238') + '''"
            />
            <path
              d="M341.61121002 586.65819695C205.11491054 652.26691548 110.84951037 791.77970775 110.84951037 953.16207287c0 18.85308003-15.08246403 33.93554407-33.93554406 33.93554407s-33.93554407-15.08246403-33.93554409-33.93554407c0-177.97307556 98.03601619-332.56833185 242.82767089-414.76776082 16.59071043 18.09895683 35.44379047 33.93554407 55.80511691 48.2638849zM993.17365612 953.16207287c0 18.85308003-15.08246403 33.93554407-33.93554408 33.93554407s-33.93554407-15.08246403-33.93554405-33.93554407c0-161.38236511-94.26540019-300.8951574-230.76169966-366.50387592 20.36132644-13.57421762 39.21440646-29.41080486 55.80511691-47.5097617 144.79165469 81.44530576 242.82767087 236.04056206 242.82767088 414.01363762z"
              fill="''' + getColor(1, color, colors, '#15BBDF') + '''"
            />
          </svg>
        ''';
        break;
      case IconNames.setup:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M720.36316 371.018l-56.188-172.934c-4.654-14.322-20.036-22.16-34.358-17.506l-78.07 25.366c-7.25 2.356-15.224 0.726-20.912-4.346a256.276 256.276 0 0 0-41.218-29.96c-6.576-3.842-10.58-10.922-10.58-18.538V71.03c0-15.058-12.208-27.266-27.266-27.266h-181.834c-15.058 0-27.266 12.208-27.266 27.266v82.114c0 7.614-4.002 14.69-10.576 18.534a256.258 256.258 0 0 0-41.168 29.934c-5.69 5.074-13.664 6.704-20.916 4.348l-78.12-25.382c-14.322-4.654-29.704 3.184-34.356 17.506L1.34316 371.016c-4.654 14.322 3.184 29.704 17.506 34.356l78.05 25.36c7.252 2.356 12.754 8.364 14.366 15.816a253.468 253.468 0 0 0 15.718 48.46c3.072 6.984 2.162 15.076-2.322 21.248l-48.22 66.37c-8.852 12.182-6.15 29.234 6.032 38.084l147.108 106.882c12.182 8.852 29.234 6.15 38.086-6.032l48.188-66.326c4.484-6.17 11.894-9.538 19.484-8.776 8.404 0.844 16.926 1.284 25.552 1.284 8.604 0 17.104-0.44 25.486-1.28 7.588-0.76 14.998 2.606 19.48 8.776l48.184 66.32c8.852 12.182 25.902 14.884 38.086 6.032l147.108-106.882c12.182-8.852 14.882-25.902 6.032-38.084l-48.176-66.308c-4.486-6.174-5.394-14.268-2.32-21.252a253.424 253.424 0 0 0 15.75-48.544c1.612-7.454 7.114-13.46 14.368-15.816l77.968-25.334c14.322-4.65 22.16-20.032 17.506-34.352z m-359.472 120.706c-54.924 0-99.448-44.524-99.448-99.448s44.524-99.448 99.448-99.448 99.448 44.524 99.448 99.448-44.526 99.448-99.448 99.448z"
              fill="''' + getColor(0, color, colors, '#5B6EA2') + '''"
            />
            <path
              d="M360.89116 516.228c-68.346 0-123.952-55.604-123.952-123.952s55.604-123.952 123.952-123.952 123.952 55.604 123.952 123.952-55.606 123.952-123.952 123.952z m0-198.894c-41.324 0-74.944 33.62-74.944 74.944s33.618 74.944 74.944 74.944 74.944-33.618 74.944-74.944-33.62-74.944-74.944-74.944z"
              fill="''' + getColor(1, color, colors, '#86DBD5') + '''"
            />
            <path
              d="M335.33916 646.46c8.404 0.844 16.926 1.284 25.552 1.284 8.604 0 17.104-0.44 25.486-1.278 7.588-0.76 14.998 2.606 19.48 8.776l48.184 66.32c8.852 12.182 25.902 14.884 38.086 6.032l74.012-53.772c-121.448-49.224-191.894-126.576-231.428-211.328-28.45-10.642-48.762-38.098-48.762-70.216a74.514 74.514 0 0 1 13.154-42.348c-23.962-126.424-1.346-249.502 6.73-306.166h-35.896c-15.058 0-27.266 12.208-27.266 27.266v82.114c0 7.614-4.002 14.69-10.576 18.536a256.152 256.152 0 0 0-41.166 29.934c-5.69 5.074-13.664 6.704-20.916 4.348L91.89116 180.578c-14.322-4.654-29.704 3.184-34.356 17.506L1.34316 371.016c-4.654 14.322 3.184 29.704 17.506 34.356l78.05 25.36c7.252 2.356 12.754 8.364 14.366 15.816a253.468 253.468 0 0 0 15.718 48.46c3.072 6.984 2.162 15.076-2.322 21.248l-48.22 66.37c-8.852 12.182-6.15 29.234 6.032 38.084l147.108 106.882c12.182 8.852 29.234 6.15 38.086-6.032l48.188-66.326c4.484-6.168 11.894-9.536 19.484-8.774z"
              opacity=".1"
              fill="''' + getColor(2, color, colors, '#333333') + '''"
            />
            <path
              d="M1004.51916 274.936l-69.236-69.236c-25.976-25.976-68.09-25.976-94.066 0L576.30116 470.614a33.62 33.62 0 0 0-9.412 29.166l2.754 16.948a41.288 41.288 0 0 1-11.558 35.818l-25.652 25.652 99.586 99.586 25.652-25.652a41.286 41.286 0 0 1 35.818-11.558l16.948 2.754a33.62 33.62 0 0 0 29.166-9.412L1004.51916 369c25.976-25.976 25.976-68.09 0-94.064z"
              fill="''' + getColor(3, color, colors, '#F7B96D') + '''"
            />
            <path
              d="M667.65916 542.558c-12.176-12.176-12.176-31.92 0-44.096l197.396-197.396c12.176-12.176 31.92-12.176 44.096 0 12.176 12.176 12.176 31.92 0 44.096l-197.396 197.396c-12.176 12.176-31.918 12.176-44.096 0z"
              fill="''' + getColor(4, color, colors, '#FDE27C') + '''"
            />
            <path
              d="M657.67116 652.132a41.274 41.274 0 0 1 31.768-11.996c-59.072-47.372-67.294-184.166 2.842-285.502l-115.98 115.98a33.62 33.62 0 0 0-9.412 29.166l2.754 16.948a41.288 41.288 0 0 1-11.558 35.818l-25.652 25.652 99.586 99.586 25.652-25.652z"
              opacity=".1"
              fill="''' + getColor(5, color, colors, '#333333') + '''"
            />
            <path
              d="M402.00116 852.312l146.338-146.338-44.096-44.096-146.338 146.338a45.4 45.4 0 0 1-15.862 10.294l-68.064 26.086a37.556 37.556 0 0 0-22.032 22.738l-20.978 60.356a17.81 17.81 0 0 0 4.23 18.444l28.884 28.884a17.816 17.816 0 0 0 18.444 4.23l60.356-20.978a37.556 37.556 0 0 0 22.738-22.032l26.086-68.064a45.4 45.4 0 0 1 10.294-15.862z"
              fill="''' + getColor(6, color, colors, '#495059') + '''"
            />
            <path
              d="M504.23916 661.878l44.094 44.094-29.092 29.094-44.094-44.096z"
              opacity=".1"
              fill="''' + getColor(7, color, colors, '#333333') + '''"
            />
            <path
              d="M590.08516 747.722l-127.59-127.59c-9.862-9.862-9.862-25.85 0-35.712l20.222-20.222c9.862-9.862 25.85-9.862 35.712 0l127.59 127.59c9.862 9.862 9.862 25.85 0 35.712l-20.222 20.222c-9.86 9.862-25.85 9.862-35.712 0z"
              fill="''' + getColor(8, color, colors, '#FDE27C') + '''"
            />
            <path
              d="M518.43116 564.198c-9.862-9.862-25.85-9.862-35.712 0l-20.222 20.222c-9.862 9.862-9.862 25.85 0 35.712l100.512 100.512c-38.162-57.234-28.442-108.238-16.758-128.628l-27.82-27.818z"
              opacity=".1"
              fill="''' + getColor(9, color, colors, '#333333') + '''"
            />
          </svg>
        ''';
        break;

    }

    if (svgXml == null) {
      return new Container(width: 0, height: 0);
    }

    return SvgPicture.string(svgXml, width: this.size, height: this.size);
  }
}