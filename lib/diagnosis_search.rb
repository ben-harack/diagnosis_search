require 'diagnosis_search/version'
require 'triez'

module DiagnosisSearch
  # Container for list of diagnoses with methods for searching
  class DiagnosisCorpus
    def initialize(filename)
      @search_tree = Triez.new value_type: :object
      @search_array = []
      read_file(filename)
      build_search_tree
    end

    def search_suffix_tree(search_string)
      results = []
      @search_tree.search_with_prefix(search_string) do |_, ids|
        ids.each { |str| results << str } if ids.is_a?(Array)
      end
      results.uniq
    end

    def search_array(search_string)
      results = []
      @search_array.each do |item|
        results << item if item.include?(search_string)
      end
      results
    end

    private

    def read_file(filename)
      File.open(filename) do |file|
        file.each { |line| @search_array << line }
      end
    end

    def build_search_tree
      @search_array.each_with_index do |str, _id|
        @search_tree.change_all(:suffix, str) do |arr|
          arr ||= []
          arr << str
        end
      end
    end
  end
end
