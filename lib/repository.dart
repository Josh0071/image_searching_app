abstract class Repository<PixabayResult> {
  Future<PixabayResult> getImages(String querry);
}
