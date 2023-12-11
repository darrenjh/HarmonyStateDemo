import router from '@ohos.router';
/**
 * 线性布局
 */
@Entry
@Component
struct RowColumn {
  @State params: object = router.getParams()
  scroller: Scroller = new Scroller();
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  build() {
    Column(){
      Stack({ alignContent: Alignment.Start }) {
        Text(this.params?.['title'])
          .fontColor(Color.White)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Grey)
        Stack({ alignContent: Alignment.Center }) {
          Image($r("app.media.icon_back")).width(15).height(20)
        }.height('100%').width(50).onClick(() => {
          router.back()
        })

      }.width('100%').height(50);
      Scroll(this.scroller) {
        Column() {

          Column({ space: 15 }) {
            Text('Column容器,纵向垂直排列，内排列方向上的间距,space: 15')
              .fontStyle(FontStyle.Italic)
              .fontSize(15)
              .fontColor(Color.Gray)
              .fontWeight(FontWeight.Bold)
              .width('90%')
            Row().width('90%').height(30).backgroundColor(0xF5DEB3)
            Row().width('90%').height(30).backgroundColor(0xD2B48C)
            Row().width('90%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').margin({ top: 20 })

          Text('Row容器,横向排列，内排列方向上的间距,space: 20')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .fontColor(Color.Gray)
            .fontWeight(FontWeight.Bold)
            .width('100%')
            .padding({
              top: 30,
              left: 30,
              right: 30
            })
          Row({ space: 20 }) {
            Text('space: 20')
              .fontStyle(FontStyle.Normal)
              .fontSize(15)
              .fontColor(Color.Gray)
              .fontWeight(FontWeight.Bold)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
            Row().width('10%').height(150).backgroundColor(0xD2B48C)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
          }.width('100%').padding({
            top: 30,
            left: 30,
            right: 30
          }).padding({
            top: -10,
            left: 30,
            right: 30
          })


          Column({}) {
            Text('Column纵向垂直布局，左对齐方式，使用HorizontalAlign.Start')
              .fontStyle(FontStyle.Normal)
              .fontSize(15)
              .padding(10)
              .width('80%')
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('100%')
          .alignItems(HorizontalAlign.Start)
          .margin({
            top: 20
          })
          .width('90%')
          .backgroundColor(Color.Gray)

          Column({}) {
            Text('Column纵向垂直布局，居中对齐方式，使用HorizontalAlign.Center')
              .fontStyle(FontStyle.Normal)
              .fontSize(15)
              .padding(10)
              .width('80%')
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('100%')
          .alignItems(HorizontalAlign.Center)
          .margin({
            top: 20
          })
          .width('90%')
          .backgroundColor(Color.Gray)

          Column({}) {
            Text('Column纵向垂直布局，居右对齐方式，使用HorizontalAlign.END')
              .fontStyle(FontStyle.Normal)
              .fontSize(15)
              .padding(10)
              .width('80%')
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('100%')
          .alignItems(HorizontalAlign.End)
          .margin({
            top: 20
          })
          .width('90%')
          .backgroundColor(Color.Gray)

          Text('Row横向水平布局，居上对齐方式，使用VerticalAlign.Top')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })
          Row({}) {

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).alignItems(VerticalAlign.Top).backgroundColor(Color.Gray)

          Text('Row横向水平布局，居中对齐方式，使用VerticalAlign.Center')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).alignItems(VerticalAlign.Center).backgroundColor(Color.Gray)


          Text('Row横向水平布局，居下对齐方式，使用VerticalAlign.Bottom')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })
          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).alignItems(VerticalAlign.Bottom).backgroundColor(Color.Gray)


          Text('在布局容器内，可以通过justifyContent属性设置子元素在容器主轴上的排列方式。可以从主轴起始位置开始排布，也可以从主轴结束位置开始排布，或者均匀分割主轴的空间。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 50
            })

          Text('justifyContent(FlexAlign.Start),元素在垂直方向首端对齐，第一个元素与行首对齐，同时后续的元素与前一个对齐。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Column({}) {
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }.width('100%').height(300).backgroundColor(Color.Gray).justifyContent(FlexAlign.Start)

          Text('justifyContent(FlexAlign.Center),素在垂直方向中心对齐，第一个元素与行首的距离与最后一个元素与行尾距离相同。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Column({}) {
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }.width('100%').height(300).backgroundColor(Color.Gray).justifyContent(FlexAlign.Center)

          Text('justifyContent(FlexAlign.End),元素在垂直方向尾部对齐，最后一个元素与行尾对齐，其他元素与后一个对齐')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Column({}) {
            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)

            Column() {
            }.width('80%').height(50).backgroundColor(0xD2B48C)

            Column() {
            }.width('80%').height(50).backgroundColor(0xF5DEB3)
          }.width('100%').height(300).backgroundColor(Color.Gray).justifyContent(FlexAlign.End)


          Text('justifyContent(FlexAlign.Start)：元素在水平方向方向首端对齐，第一个元素与行首对齐，同时后续的元素与前一个对齐。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.Start)


          Text('justifyContent(FlexAlign.Center)：元素在水平方向方向中心对齐，第一个元素与行首的距离与最后一个元素与行尾距离相同。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.Center)

          Text('justifyContent(FlexAlign.End)：元素在水平方向方向尾部对齐，最后一个元素与行尾对齐，其他元素与后一个对齐。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.End)

          Text('justifyContent(FlexAlign.SpaceBetween)：水平方向方向均匀分配元素，相邻元素之间距离相同。第一个元素与行首对齐，最后一个元素与行尾对齐。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.SpaceBetween)


          Text('justifyContent(FlexAlign.SpaceAround)：水平方向方向均匀分配元素，相邻元素之间距离相同。第一个元素到行首的距离和最后一个元素到行尾的距离是相邻元素之间距离的一半。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.SpaceAround)


          Text('justifyContent(FlexAlign.SpaceEvenly)：水平方向方向均匀分配元素，相邻元素之间的距离、第一个元素与行首的间距、最后一个元素到行尾的间距都完全一样。')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 20
            })

          Row({}) {
            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)

            Column() {
            }.width('20%').height(30).backgroundColor(0xD2B48C)

            Column() {
            }.width('20%').height(30).backgroundColor(0xF5DEB3)
          }.width('100%').height(200).backgroundColor(Color.Gray).justifyContent(FlexAlign.SpaceEvenly)

          Text('自适应拉伸Blank')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 50
            })
          Column() {
            Row() {
              Text('Bluetooth').fontSize(18)
              Blank()
              Toggle({ type: ToggleType.Switch, isOn: true })
            }.backgroundColor(0xFFFFFF).borderRadius(15).padding({ left: 12 }).width('100%')
          }.backgroundColor(0xEFEFEF).padding(20).width('100%')

          Text('自适应缩放layoutWeight')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 50
            })

          Text('1:2:3').width('100%')
          Row() {
            Column() {
              Text('layoutWeight(1)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(1).backgroundColor(0xF5DEB3).height('100%')

            Column() {
              Text('layoutWeight(2)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(2).backgroundColor(0xD2B48C).height('100%')

            Column() {
              Text('layoutWeight(3)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')

          }.backgroundColor(0xffd306).height('30%')

          Text('2:5:3').width('100%')
          Row() {
            Column() {
              Text('layoutWeight(2)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(2).backgroundColor(0xF5DEB3).height('100%')

            Column() {
              Text('layoutWeight(5)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(5).backgroundColor(0xD2B48C).height('100%')

            Column() {
              Text('layoutWeight(3)')
                .textAlign(TextAlign.Center)
            }.layoutWeight(3).backgroundColor(0xF5DEB3).height('100%')
          }.backgroundColor(0xffd306).height('30%')


          Text('自适应延伸')
            .fontStyle(FontStyle.Normal)
            .fontSize(15)
            .padding(10)
            .width('100%')
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .margin({
              top: 50
            })
          Column() {
            ForEach(this.arr, (item) => {
              Text(item.toString())
                .width('90%')
                .height(150)
                .backgroundColor(0xFFFFFF)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin({ top: 10 })
            }, item => item)
          }.width('100%')
        }.width('100%')
      }.scrollBarColor(Color.Red) // 滚动条颜色
      .scrollBarWidth(10) // 滚动条宽度
      .scrollBar(BarState.On) // 滚动条常驻显示
      .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
      .scrollable(ScrollDirection.Vertical) // 滚动方向纵向
      .scrollBar(BarState.On) // 滚动条常驻显示
    }

  }
}