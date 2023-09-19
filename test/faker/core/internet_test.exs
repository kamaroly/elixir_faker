defmodule Faker.Core.InternetTest do
  use ExUnit.Case
  use Faker.Core.Text
  use Faker.Core.Person
  use Faker.Core.Internet
  use Faker.Core.Generator

  test "generates a valid email address" do
    email = email()
    assert Regex.match?(~r/.+@.+\..+/, email)
  end

  test "generates a safe email address" do
    safe_email = safe_email()
    assert Regex.match?(~r/.+@example\.(com|org|net)/, safe_email)
  end

  test "generates a free email address" do
    free_email = free_email()
    assert Regex.match?(~r/.+@(gmail|yahoo|hotmail)\.com/, free_email)
  end

    test "generates a company email address" do
    company_email = company_email()
    assert Regex.match?(~r/.+@.+\..+/, company_email)
  end

  test "generates a random safe email domain" do
    safe_email_domain = safe_email_domain()
    assert Enum.member?(["example.com", "example.org", "example.net"], safe_email_domain)
  end

  test "generates a random username" do
    username = username()
    assert Regex.match?(~r/.+/, username)
  end

  test "generates a random password within the specified length range" do
    password = password(6, 20)
    assert String.length(password) >= 6
    assert String.length(password) <= 20
  end

  test "generates a domain word" do
    domain_word = domain_word()
    assert Regex.match?(~r/.+/, domain_word)
  end

  test "generates a domain name" do
    domain_name = domain_name()
    assert Regex.match?(~r/.+\..+/, domain_name)
  end

  test "generates a top-level domain" do
    tld = tld()
    assert Enum.member?(["com", "biz", "info", "net", "org"], tld)
  end

  test "generates a random URL" do
    url = url()
    assert Regex.match?(~r/^https?:\/\/(?:www\.)?\w+\.\w+\//, url)
  end

  test "generates a random slug" do
    slug = slug()
    assert Regex.match?(~r/^[a-z0-9-]+$/, slug)
  end

  test "generates a valid-looking random IPv4 address" do
    ipv4 = ipv4()
    assert Regex.match?(~r/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/, ipv4)
  end

  test "generates a random local IPv4 address" do
    local_ipv4 = local_ipv4()
    assert Regex.match?(~r/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/, local_ipv4)
  end

  test "generates a random MAC address" do
    mac_address = mac_address()
    assert Regex.match?(~r/^[0-9A-Fa-f]{2}(:[0-9A-Fa-f]{2}){5}$/, mac_address)
  end
end
