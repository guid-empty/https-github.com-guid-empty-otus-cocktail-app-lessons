abstract class Storage {

  Future init();

  Future setValue(String key, value);

  Future getValue(String key);
}
