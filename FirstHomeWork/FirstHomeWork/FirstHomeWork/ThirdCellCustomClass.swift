import UIKit

class ThirdCellCustomClass: UITableViewCell {

    var collectionView: UICollectionView!
    let images = ["photo1", "photo2", "photo3"]

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCollectionView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCollectionView()
    }

    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 8

        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])

        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "photoCell")
        collectionView.dataSource = self
        collectionView.delegate = self

    }
}

extension ThirdCellCustomClass: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath)

        let imageView = UIImageView(frame: cell.contentView.bounds)
        imageView.image = UIImage(named: images[indexPath.item])
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        cell.contentView.subviews.forEach { $0.removeFromSuperview() }
        
        cell.contentView.addSubview(imageView)
        
        return cell
    }
}

extension ThirdCellCustomClass: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100) 
    
    
}

