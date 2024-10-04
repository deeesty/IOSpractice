import UIKit

class ThirdCellCustomClass: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

  @IBOutlet weak var collectionView: UICollectionView!

  var photos: [UIImage] = []

  private lazy var flowLayout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal // Горизонтальная прокрутка
    return layout
  }()

  override func awakeFromNib() {
    super.awakeFromNib()

    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.collectionViewLayout = flowLayout // Устанавливаем layout

    // Регистрация ячеек CollectionView
    collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageCell")
  }

  // MARK: - UICollectionViewDataSource

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return photos.count // Количество ячеек равно количеству фотографий
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as? ImageCell else {
      return UICollectionViewCell()
    }
    cell.imageView.image = photos[indexPath.item] // Устанавливаем изображение в ячейку
    return cell
  }

  // MARK: - UICollectionViewDelegateFlowLayout
}

