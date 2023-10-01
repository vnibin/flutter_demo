

class CouponModel {
  String couponNo;
  String packageName;
  String customerName;
  String allocatedRmn;
  String allocatedDate;
  String expiredOn;
  String ottCustomerId;
  String transactionId;
  String consumedRmn;
  String consumedDate;
  String watchoCustomerId;

  CouponModel({
    required this.couponNo,
    required this.packageName,
    required this.customerName,
    required this.allocatedRmn,
    required this.allocatedDate,
    required this.expiredOn,
    required this.ottCustomerId,
    required this.transactionId,
    required this.consumedRmn,
    required this.consumedDate,
    required this.watchoCustomerId
});


  static List<CouponModel> getCoupons()
  {
    List<CouponModel>coupons=[];

    coupons.add(
      CouponModel(couponNo: "Coupon no : Masti-CouponSerialNo_11",
          packageName: "Package Name : Watcho Masti", customerName: "Customer Name : N/A", allocatedRmn: "Allocated Mobile No :8726605238_1",
          allocatedDate: "Allocated on : 28-Dec-20222 06:26:PM", expiredOn: "Expired On : N/A", ottCustomerId: "OTT Customer Id : N/A",
          transactionId: "transaction Id : 202232323232323232", consumedRmn: "Consumed Mobile No : N/A",
          consumedDate: "Consumed On : N/A", watchoCustomerId: "Watcho Customer Id : 26")

    );

    coupons.add(
    CouponModel(couponNo: "Coupon no :Masti-CouponSerialNo_12",
        packageName: "Package Name : Watcho Masti", customerName: "Customer Name : N/A", allocatedRmn: " Allocated Mobile No :8726605238_1",
        allocatedDate: "Allocated on : 28-Dec-20222 06:26:PM", expiredOn: "Expired On : N/A", ottCustomerId: "OTT Customer Id : N/A",
        transactionId: "transaction Id : 202232323232323232", consumedRmn: "Consumed Mobile No : N/A",
        consumedDate: "Consumed On : N/A", watchoCustomerId: "Watcho Customer Id : 26")

    );


    coupons.add(
    CouponModel(couponNo: "Coupon no :Masti-CouponSerialNo_13",
        packageName: "Package Name : Watcho Masti", customerName: "Customer Name : N/A", allocatedRmn: " Allocated Mobile No :8726605238_1",
        allocatedDate: "Allocated on : 28-Dec-20222 06:26:PM", expiredOn: "Expired On : N/A", ottCustomerId: "OTT Customer Id : N/A",
        transactionId: "transaction Id : 202232323232323232", consumedRmn: "Consumed Mobile No : N/A",
        consumedDate: "Consumed On : N/A", watchoCustomerId: "Watcho Customer Id : 26")

    );


    coupons.add(
    CouponModel(couponNo: "Coupon no :Masti-CouponSerialNo_14",
        packageName: "Package Name : Watcho Masti", customerName: "Customer Name : N/A", allocatedRmn: " Allocated Mobile No :8726605238_1",
        allocatedDate: "Allocated on : 28-Dec-20222 06:26:PM", expiredOn: "Expired On : N/A", ottCustomerId: "OTT Customer Id : N/A",
        transactionId: "transaction Id : 202232323232323232", consumedRmn: "Consumed Mobile No : N/A",
        consumedDate: "Consumed On : N/A", watchoCustomerId: "Watcho Customer Id : 26")

    );


    return coupons;

  }




}