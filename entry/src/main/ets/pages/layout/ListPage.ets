import router from '@ohos.router';
import { Contact } from '../../model/Contact';
/**
 * 创建列表
 */
@Entry
@Component
struct ListPage {
  @State params: object = router.getParams()
  private contacts: Contact[] = [
    new Contact('白起', $r("app.media.baiqi")),
    new Contact('曹操', $r("app.media.caocao")),
    new Contact('成吉思汗', $r("app.media.chengjisihan")),
    new Contact('韩信', $r("app.media.hanxin")),
    new Contact('李世民', $r("app.media.lishimin")),
    new Contact('努尔哈赤', $r("app.media.nuerhachi")),
    new Contact('孙膑', $r("app.media.sunbin")),
    new Contact('孙武', $r("app.media.sunwu")),
    new Contact('岳飞', $r("app.media.yuefei")),
    new Contact('朱元璋', $r("app.media.zhuyuanzhang"))
  ]

  build() {
    Column() {
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
      Scroll() {
        Column() {
          Text('普通的列表').fontWeight(FontWeight.Bold)
          List({ space: 10 }) {
            ListItem() {
              Text('北京').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)

            ListItem() {
              Text('上海').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)


            ListItem() {
              Text('广州').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)


            ListItem() {
              Text('深圳').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)


            ListItem() {
              Text('杭州').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)


            ListItem() {
              Text('天津').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)


            ListItem() {
              Text('成都').fontSize(24).fontColor(Color.White)
            }
            .width('80%')
            .height(50)
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .margin(10)

          }
          .height(220).alignListItem(ListItemAlign.Center)

          Text('自定义列表，并使用ForEach').fontWeight(FontWeight.Bold).margin({
            top: 50,
            bottom:20
          })
          List() {
            ForEach(this.contacts, (item: Contact) => {
              ListItem() {
                Flex({alignItems: ItemAlign.Center }) {
                  Image(item.icon)
                    .width(40)
                    .height(40).margin({
                    left:20,
                    right:10,
                    top:10,
                    bottom:10
                  }).borderRadius(5)
                  Text(`${item.name}`).fontWeight(FontWeight.Bold).fontSize(20)
                }
                .width('100%')
              }
            })
          }
          .width('100%')
          .divider({
            strokeWidth: 0.5,
            startMargin: 60,
            endMargin: 10,
            color: Color.Gray
          })
          .backgroundColor(Color.White)
          .margin({
            bottom:100
          })
          .borderRadius(10)
          .scrollBar(BarState.Auto)

        }
      }.width('90%').margin({ top: 30})

    }.backgroundColor('#feefff')
  }
}