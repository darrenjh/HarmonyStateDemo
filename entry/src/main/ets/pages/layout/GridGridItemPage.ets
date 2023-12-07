/**
 * 创建网格
 */
import router from '@ohos.router';
import { Contact } from '../../model/Contact';

@Entry
@Component
struct GridGridItemPage {
  @State params: object = router.getParams()
  scroller: Scroller = new Scroller();
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
      Grid() {
        ForEach(this.contacts, (item: Contact) => {
          GridItem() {
            Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Image(item.icon)
                .width(100)
                .height(100).borderRadius(5)
              Text(`${item.name}`).fontWeight(FontWeight.Bold).fontSize(20)
            }
          }
        })

      }.rowsTemplate('1fr').columnsGap(10)

    }
  }
}