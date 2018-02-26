  private static final String NUMBER_PATTERN1 = "^[0-9-+,.\\s]*$";
  private static final String NUMBER_PATTERN2 = ".*\\.{2,}.*|.*,{2,}.*|.*[-+]{2,}.*|.*[-+]\\s*[-+].*";

    public static String checkNumberIsSecure(String value)
        throws Exception
    {
      /*
       * To avoid SQL injection we must check that we have only the following characters: +-.,0 to 9 and space
       * and we throw an exception in case we found any
       */
      if (value==null)
          return value;
      Pattern pattern1 = Pattern.compile(NUMBER_PATTERN1);
      Matcher matcher1 = pattern1.matcher(value);
      if (!matcher1.matches())
        throw new Exception("Illegal characters found in the parameters values");
      Pattern pattern2 = Pattern.compile(NUMBER_PATTERN2);
      Matcher matcher2 = pattern2.matcher(value);
      if (matcher2.matches())
        throw new Exception("Illegal characters found in the parameters values");
      return value;
    }