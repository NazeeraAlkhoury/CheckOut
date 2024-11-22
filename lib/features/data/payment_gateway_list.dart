import '../../core/utils/app_icon_assets.dart';
import 'models/payment_item_model.dart';

List<PaymentItemModel> paymentGatewayList = [
  PaymentItemModel(icon: AppIconAssets.iconStripe, onTap: () {}),
  PaymentItemModel(icon: AppIconAssets.iconPaypal, onTap: () {}),
  PaymentItemModel(icon: AppIconAssets.iconStripe, onTap: () {}),
  PaymentItemModel(icon: AppIconAssets.iconCridtCard, onTap: () {}),
];
