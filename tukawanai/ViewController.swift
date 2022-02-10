
import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    var imagePickUpButton:UIButton = UIButton()
    var picker: UIImagePickerController! = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        //押されるとUIImagePickerControllerが開くボタンを作成する
        imagePickUpButton.frame = self.view.bounds
        imagePickUpButton.addTarget(self, action: #selector(imagePickUpButtonClicked(sender:)), for: .touchUpInside)
        imagePickUpButton.backgroundColor = UIColor.gray
        imagePickUpButton.setTitle("Toupe Me!!", for: UIControlState.normal)
        self.view.addSubview(imagePickUpButton)
    }

    //basicボタンが押されたら呼ばれます
    func imagePickUpButtonClicked(sender: UIButton){

        //PhotoLibraryから画像を選択
        picker.sourceType = UIImagePickerControllerSourceType.photoLibrary

        //デリゲートを設定する
        picker.delegate = self

        //現れるピッカーNavigationBarの文字色を設定する
        picker.navigationBar.tintColor = UIColor.white

        //現れるピッカーNavigationBarの背景色を設定する
        picker.navigationBar.barTintColor = UIColor.gray

        //ピッカーを表示する
        present(picker, animated: true, completion: nil)
    }

    //UIImagePickerControllerのデリゲートメソッド

    //画像が選択された時に呼ばれる.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {

            //ボタンの背景に選択した画像を設定
            imagePickUpButton.setBackgroundImage(image, for: UIControlState.normal)
        } else{
            print("Error")
        }

        // モーダルビューを閉じる
        self.dismiss(animated: true, completion: nil)
    }

     //画像選択がキャンセルされた時に呼ばれる.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {

        // モーダルビューを閉じる
        self.dismiss(animated: true, completion: nil)
    }
}