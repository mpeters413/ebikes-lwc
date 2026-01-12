@isTest
private class HelloWorldQATest {
  @isTest static void hello() {
    HelloWorldQA hello_world = new HelloWorldQA();
    String result = hello_world.hello();

    system.assertEquals(result, 'Hello World!');
  }
}